create database family;

use family;

create table customer(
id int not null,
name varchar(50) not null,
age int not null,
city varchar(50) not null, 
salary int
);

insert into customer
(id, name, age, city, salary)
values
(1,'Ankit', 27, 'pune', 0000),
(2,'Ankur', 25, 'pune', 45000),
(3,'Anubhav', 24, 'Muzzafarpur', 15000),
(4,'Golu', 20, 'Vaishali', 0),
(5,'Abhiraj', 12, 'Ghataro', 0);

select * from customer;

update customer
set name='Sachin', age=18
where id=4;

select * from customer;

delete from customer
where id=5;

select * from customer;

alter table customer 
add column gender varchar(50);

select * from customer;

alter table customer
drop column gender;

select * from customer; 

select id, name from customer;

select name from customer where city='Muzzafarpur';

select name from customer where salary>30000;

select * from customer order by name asc;

select * from customer order by name desc;

select * from customer limit 1;

select upper(name) from customer;

select lower(name) from customer;

select length(name), name from customer;

select substring(name, 1,3) name from customer;

select concat(name,salary), name, salary from customer;

select replace(name, 'Golu', 'Sachin'), name from customer;

select count(name) from customer;

select sum(salary) from customer;

select max(salary) from customer;

select min(salary) from customer;

select avg(salary) from customer;

select round(avg(salary)) from customer;

select city from customer where salary>=15000 group by city;

select * from customer;

select city from customer where age>=20 group by city having max(salary) > 20000; 

update customer set salary=salary+20000;

select * from customer;