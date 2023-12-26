create database college;

use college;

create table students(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

create table dept(
id int primary key,
name varchar(50)
);

insert into dept
values
(101, 'CSE'),
(102,'Mechanical'),
(103,'Electrical');

drop table dept;

select * from dept;

update dept set id=104 where id=103;

create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key (dept_id) references dept(id)
on update cascade
on delete cascade
);

drop table teacher;
insert into teacher
values
(101, 'Manish', 101),
(102, 'kapil', 102),
(103, 'surya', 103);

select * from teacher;

select * from dept inner join teacher on dept.id=teacher.id;

select * from dept left join teacher on dept.id=teacher.id;

select * from dept right join teacher on dept.id=teacher.id;

select * from dept left join teacher on dept.id=teacher.id
union
select * from dept right join teacher on dept.id=teacher.id;

select * from dept left join teacher on dept.id=teacher.id
where teacher.id is null;

select * from dept right join teacher on dept.id=teacher.id
where dept.id is null;

