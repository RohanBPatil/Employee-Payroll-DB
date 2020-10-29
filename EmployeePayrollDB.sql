show databases;		#To see all databases

#UC 1
create database payroll_service;	# to create database
use payroll_service;			# to use payroll_service database

#UC 2
create table employee_payroll		# to create table
(
id int not null auto_increment,
name varchar(100) not null,
salary double not null,
start date not null,
primary key (id)
);
describe employee_payroll;

#UC 3
insert into employee_payroll (name, salary, start)
values
('Shahrukh', 100000, '2018-01-03'),
('Anil', 300000, '2019-11-13'),
('Mansi', 500000, '2020-05-21');

#UC 4
select * from employee_payroll;		# to retrieve all data from table

#UC 5
select salary from employee_payroll where name = 'Anil';
select * from employee_payroll
where start between cast('2020-01-01' as date) and date(now());

#UC 6
alter table employee_payroll		# to operate on columns
add gender char(1)			# to add gender column
after name;
describe employee_payroll;
update employee_payroll
set gender = 'M'
where name = 'Shahrukh' or name = 'Anil';
update employee_payroll
set gender = 'F'
where name = 'Mansi';
select *  from employee_payroll;
