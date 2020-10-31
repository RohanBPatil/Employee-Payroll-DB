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

#UC 7
select gender, sum(salary) from employee_payroll group by gender;
select gender, avg(salary) from employee_payroll group by gender;
select gender, min(salary) from employee_payroll group by gender;
select gender, max(salary) from employee_payroll group by gender;
select gender, count(*) from employee_payroll group by gender;

#UC 8
alter table employee_payroll
add phone numeric(10) not null after name,
add address varchar(200) not null default 'Mumbai' after phone,
add department varchar(200) not null after address;

#UC 9
alter table employee_payroll rename column salary to basic_pay, 
add deductions double not null after basic_pay, 
add taxable_pay double not null after deductions, 
add tax double not null after taxable_pay, 
add net_pay double not null after tax;

#UC 10
update employee_payroll set department = 'Sales' where name = 'Mansi';
insert into employee_payroll (name,phone, department, gender, basic_pay, deductions, taxable_pay, tax, net_pay, start) values
('Mansi', 9865326598, 'Marketing', 'f', 400000, 50000, 200000, 10000, 200000, '2020-05-21');