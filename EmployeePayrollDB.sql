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
('Makrand', 500000, '2020-05-21');