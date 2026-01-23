use learnsql;

show tables ;

select * from learnsql.student;

alter table learnsql.student drop age;
alter table student drop gender;

alter table student add no varchar(10);

alter table student modify id int auto_increment primary key ;

show create table student;

create table course(
    id int auto_increment primary key ,
    name varchar(10)
);

create table student_course(
    id int auto_increment primary key ,
    studentId int not null ,
    courseId int not null ,
    constraint fk_student_course_studentId foreign key (studentId) references student(id),
    constraint fk_student_course_courseId foreign key (courseId) references course(id)
);

INSERT INTO student (name, no) VALUES
('张伟', 'S001'),
('李娜', 'S002'),
('王强', 'S003'),
('刘芳', 'S004'),
('陈浩', 'S005');

INSERT INTO course (name) VALUES
('高等数学'),
('大学英语'),
('计算机基础'),
('数据结构');

INSERT INTO student_course (studentId, courseId) VALUES
(1, 1), -- 张伟 选 高等数学
(1, 2), -- 张伟 选 大学英语
(2, 1), -- 李娜 选 高等数学
(2, 3), -- 李娜 选 计算机基础
(3, 4), -- 王强 选 数据结构
(4, 2), -- 刘芳 选 大学英语
(4, 3), -- 刘芳 选 计算机基础
(5, 1); -- 陈浩 选 高等数学

select * from student;

select * from course;

select * from student_course;

create table user(
    id int auto_increment primary key comment '主键',
    name varchar(10) comment '姓名',
    age int comment '年龄',
    gender char(1) comment '0：女 1：男',
    phone char(11) comment '手机号'
)comment '用户表';

create table user_edu(
    id int auto_increment primary key comment '主键',
    degree varchar(20) comment '学历',
    major varchar(50) comment '专业',
    primarySchool varchar(50) comment '小学',
    middleSchool varchar(50) comment '中学',
    university varchar(50) comment '大学',
    userId int unique comment '用户ID',
    constraint fk_userid foreign key (userId) references user(id)
) comment '用户教育信息表';

INSERT INTO user (name, age, gender, phone) VALUES
('张明', 28, '1', '13800138001'),
('李婷', 24, '0', '13900139002'),
('王浩', 32, '1', '13600136003'),
('赵雪', 26, '0', '15000150004'),
('刘洋', 29, '1', '18700187005');

INSERT INTO user_edu (degree, major, primarySchool, middleSchool, university, userId) VALUES
('本科', '计算机科学与技术', '阳光第一小学', '市第三中学', '清华大学', 1),
('硕士', '金融学', '育才小学', '实验中学', '北京大学', 2),
('大专', '软件技术', '红星小学', '城关中学', '深圳职业技术学院', 3),
('本科', '英语语言文学', '晨光小学', '外国语学校', '上海外国语大学', 4),
('博士', '人工智能', '希望小学', '省重点中学', '浙江大学', 5);

select * from user;

select * from user_edu;