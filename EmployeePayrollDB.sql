show databases;		#To see all databases

#UC 1
create database payroll_service;	# to create database
use payroll_service;			# to use payroll_service database

#uc2
create table employee_payroll		# to create table
(
id int not null auto_increment,
name varchar(100) not null,
salary double not null,
start date not null,
primary key (id)
);
describe employee_payroll;