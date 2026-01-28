use learnsql;

create table salGrade(
    grade int,
    minimumWage int,
    highestSalary int
);

select * from department;

insert into department(name) values ('调研部');

INSERT INTO salGrade (grade, minimumWage, highestSalary) VALUES
(1, 5000, 6999),   -- 初级岗位（如助理、销售）
(2, 7000, 8999),   -- 中级岗位（如会计、HR、工程师）
(3, 9000, 11999),  -- 高级岗位（如销售主管、架构师）
(4, 12000, 15000); -- 专家/管理层（如架构师顶薪）

select * from salGrade;


-- 查询员工的姓名，年龄，部门信息（隐式内连接）
select employee.name as name, employee.age as age, department.name as depart
from employee,
     department
where employee.deptId = department.id;

-- 查询小于28的员工的员工姓名，年龄，职位，部门信息（显示内连接）
select employee.name as name, employee.age as age, employee.job as job, department.name as depart
from employee
         inner join department on employee.deptId = department.id
where age < 28;

select * from employee where age<28;

-- 查询拥有员工的部门id和部门名称
select employee.deptId, department.name
from employee
         left outer join department on department.id = employee.deptId;

select employee.deptId from employee;

select * from department where id in (select employee.deptId from employee);

-- 查询年龄大于28岁的员工，及其归属部门名称，如果员工没分配部门也需要展示出来
select employee.name as name, department.name as department
from employee
         left outer join department on employee.deptId = department.id
where age > 28;

select name from employee where employee.age>28;

-- 查询所有员工的工资等级
select employee.name, employee.salary,salgrade.grade
from employee
         left outer join salgrade
                         on employee.salary between salgrade.minimumWage and salgrade.highestSalary;

select name,salary from employee;

select * from salgrade;

update salgrade set minimumWage=3500 where grade=1;

-- 查询研发部所有的员工信息及公司等级
select id
from department
where name = '研发部';

select *
from employee
where deptId = (select id from department where name = '研发部');

select emp.name as name, emp.salary as salary, emp.job, salgrade.grade
from (select * from employee where deptId = (select id from department where name = '研发部')) as emp
         left outer join salgrade on emp.salary between salgrade.minimumWage and salgrade.highestSalary;

-- 查询研发部的平均工资
select avg(employee.salary)
from employee
where deptId = (select id from department where department.name = '研发部');

-- 查询工资比吴雅婷高的员工信息
select * from employee where salary>(select salary from employee where name='吴雅婷');

-- 查询比平均薪资高的员工信息
select * from employee where salary>(select avg(salary) from employee);

-- 查询低于本部门平均薪资的员工信息
select avg(employee.salary) as avg_salary, department.id as department
from employee
         inner join department on employee.deptId = department.id group by department;

select *
from employee
         inner join (select avg(employee.salary) as avg_salary, department.id as department
                     from employee
                              inner join department on employee.deptId = department.id
                     group by department) as emp on employee.salary < emp.avg_salary and department = employee.deptId;


select *
from employee as emp1
where emp1.salary < (select avg(salary) from employee as emp2 where emp2.deptId = emp1.deptId);

-- 查询所有的部门的信息并统计部门的人数
select count(employee.name) as count, department.name as department
from employee
         right outer join department on employee.deptId = department.id
group by department.name;

-- 查询所有学生的选课情况，展示出学生的姓名，学号，课程名称
select student.no as student_no, student.name, student_course.courseId
from student_course
         inner join student on student_course.studentId = student.id;

select student_no, student.name, course.name as course
from (select student.no as student_no, student.name, student_course.courseId
      from student_course
               inner join student on student_course.studentId = student.id) as student
         inner join course on course.id = student.courseId order by name asc ;

select student.name, student.no, course.name
from student
         inner join student_course on student.id = student_course.studentId
         inner join course on student_course.studentId = course.id;