create database employee;
use employee;
create table departments(department_id int,department_name varchar(100));
create table location(location_id int,location varchar(30));
create table employees(employee_id int,employee_name varchar(50),gender enum("M","F"),age int,hire_date date,
designation varchar(100),department_id int,location_id int,salary decimal (10,2));
alter table employees add column email varchar(100);
alter table employees modify designation varchar(200);
alter table employees drop column age;
alter table employees rename column hire_date to date_of_joining;
desc employees;
desc departments;
desc location;
rename table departments to departments_info;
rename table location to locations;
truncate table employees;
drop table employees;
drop database employee;
drop database if exists employee;
create database if not exists employee;
use employee;
create table departments(department_id int primary key,department_name varchar(100) not null unique);
create table location(location_id int auto_increment primary key,location varchar(30) not null unique);
create table employees(employee_id int primary key,employee_name varchar(50)not null,gender enum("M","F") not null check(gender in ("M","F")),
age int not null check(age>=18),hire_date date default(current_date),designation varchar(100)not null,department_id int,location_id int,salary decimal (10,2)not null,
foreign key(department_id)references departments (department_id),foreign key(location_id)references location(location_id));
desc employees;
insert into departments(department_id,department_name)values(1,"hr"),(2,"finance");
select * from departments;
insert into location(location)values("kochi"),("banglore");
select * from location;
insert into employees(employee_id,employee_name,gender,age,designation,department_id,location_id,salary)values
(101,"arun","M",25,"hr executive",1,1,25000);
select * from employees;
insert into employees(employee_id,employee_name,gender,age,designation,salary)values
(102,"manu","M",27,"operations manajer",20000);
insert into employees(employee_id,employee_name,gender,age,designation,salary)values
(103,"GEETHA","F",18,"marketing executive",32000);
select * from employees;