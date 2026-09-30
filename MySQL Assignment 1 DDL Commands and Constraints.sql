-- create a database employee
create database employee;
use employee;
--- create tables departments,employees,location without constraints
create table departments (
department_id int, 
department_name varchar(100)
);
create table  location (
location_id int,
location varchar(30)
);
create table employees(
employee_id int,
employee_name varchar(50),
gender enum('M','F'),
age int,
hire_date date,
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2)
);
-- table alteration(alter)
-- add an "email" coloumn to employees
alter table employees add column email varchar(100);
--   Modify the data type of the "designation" column in the Employees table to support a wider range of values. 
alter table employees modify column designation varchar(255);
--    Drop the “age” column from the Employees table. 
alter table employees drop column age;
 --  Rename the “hire_date” column to “date_of_joining”. 
 alter table employees change column hire_date date_of_joining date;
  -- Table Renaming (RENAME)
  --  Rename the "Departments" table to "Departments_Info".
  rename table departments to Departments_Info;
  -- Rename the "Location" table to "Locations".
rename table location to Locations;
--    Table Truncation (TRUNCATE)
--  truncate the Employees table.
truncate table employees;
--    Database & Table Dropping (DROP): drop the Employees table and then the “employee” database.
drop table employees;
drop database employee;
--    Database Recreation: 
 -- Drop the 'employee' database if it exists and recreate ensuring that all tables are created with the appropriate constraints 
 drop database if exists employee;
 create database employee;
 use employee;
create table departments (
department_id int primary key, 
department_name varchar(100) not null unique
);
desc table departments;
create table  location (
location_id int primary key auto_increment,
location varchar(30) not null unique
);
create table employees(
employee_id int primary key,
employee_name varchar(50) not null,
gender enum('M','F'),
age int check (age >=18),
hire_date date default (current_date),
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2),
foreign key (department_id) references departments(department_id),
foreign key (location_id) references location (location_id)

);
show create table employees;
desc employees;

  

