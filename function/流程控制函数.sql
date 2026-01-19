use learnsql;

select * from emp;

-- if
select if(true,1,0) as result;
select if(false,1,0) as result;

-- ifnull
select ifnull(1,0) as result;
select ifnull(null,1) as result;

-- case when then else end
-- 需求：查询pemp表的员工姓名和工作地址
select
    emp.name,
    (case
        emp.workAddress when 'Guilin' then 'China' when 'Shanghai Office' then 'China'
        else 'Abroad'
    end) as workAddress
from emp;

select case when true then 1 else 0 end ;

create table Grade(
    name varchar(10) comment 'name',
    math smallint comment 'math grade',
    chinese smallint comment 'chinese grade',
    English smallint comment 'English grade'
) comment 'student grade';

show tables ;

INSERT INTO Grade (name, math, chinese, English) VALUES
('张明', 85, 92, 78),
('李华', 92, 88, 85),
('王芳', 78, 95, 82),
('刘伟', 65, 72, 68),
('陈静', 88, 90, 91),
('赵强', 73, 85, 79),
('杨帆', 95, 87, 93),
('周婷', 82, 76, 88),
('吴刚', 70, 82, 75),
('黄薇', 89, 93, 86),
('徐磊', 76, 68, 72),
('孙悦', 94, 89, 90),
('马超', 81, 77, 84),
('朱琳', 87, 94, 80),
('胡军', 72, 79, 76),
('林雪', 91, 85, 92),
('郭阳', 69, 73, 67),
('何欣', 83, 88, 81),
('高飞', 96, 90, 94),
('郑娜', 79, 84, 77);

select * from grade;

select
    Grade.name,
    (case when Grade.math>=85 then '优秀' when Grade.math>=60 and Grade.math<85 then '及格' else '不及格' end ) as math,
    (case when Grade.English>=85 then '优秀' when Grade.English>=60 and Grade.English<85 then '及格' else '不及格' end) as English,
    (case when Grade.chinese>=85 then '优秀' when Grade.chinese>=60 and Grade.chinese<85 then '及格' else '不及格' end) as chinese
from grade;