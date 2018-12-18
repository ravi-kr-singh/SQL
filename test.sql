create database a15;
use a15;

create table Employee(emp_name char(20),street char(40),city char(20));
insert into Employee values('RAGHAV','51 Delhi','Delhi');
insert into Employee values('RAM','21 Mumbai','Mumbai');
insert into Employee values('RAJESH','51 Raipur','Raipur');
insert into Employee values('ROHAN','51 Kolkata','Kolkata');
insert into Employee values('ROHIT','51 Chennai','Chennai');

create table Works(emp_name char(20),company_name char(40),salary int);
insert into Works values('RAGHAV','OYO',60000);
insert into Works values('RAM','First_Bank',150000);
insert into Works values('RAJESH','FLIPKART',80000);
insert into Works values('ROHAN','abc_comp',30000);
insert into Works values('ROHIT','Amazon',200000);

create table Company(company_name char(40),city char(20));
insert into Company values('OYO','Delhi');
insert into Company values('abc_comp','Chandigarh');
insert into Company values('Amazon','Bangalore');
insert into Company values('Flipkart','Raipur');
insert into Company values('Google','California');

create table Manages(emp_name char(20),manager_name char(20));
insert into Manages values('RAGHAV','SHYAM');
insert into Manages values('RAM','Random Sharma');
insert into Manages values('ROHAN','rk');
insert into Manages values('ROHIT','SHEKHAR');
insert into Manages values('RAJESH','PRANAV');


select e.emp_name,e.street,e.city from Employee as e, Works as w where e.emp_name=w.emp_name and w.company_name="First_Bank" and w.salary>10000;

select w.emp_name from Works as w, Company as c,Employee as e where e.emp_name=w.emp_name and w.company_name=c.company_name and e.city=c.city;


