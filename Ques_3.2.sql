create database abcdefghi;
use abcdefghi;
create table flights (flno int, froms char(15), Tos char(20), distance int,departs int);
insert into flights (flno, froms,Tos,distance,departs) values (456, 'Delhi', 'Dubai',4000,1220);
insert into flights (flno, froms,Tos,distance,departs) values (457, 'LA', 'NYC',4800,1200);
insert into flights (flno, froms,Tos,distance,departs) values (458, 'NYC', 'Delhi',15000,1208);


create table Aircraft (aid int, aname char(15), ranges int);
insert into Aircraft (aid , aname,ranges) values (156, 'Boeing',100000 );
insert into Aircraft (aid , aname,ranges) values (145, 'Bam',15000 );
insert into Aircraft (aid , aname,ranges) values (158, 'MIG',11000 );

create table Certified (eid int, aid int);
insert into Certified (eid , aid) values (784, 155 );
insert into Certified (eid , aid) values (745, 145 );
insert into Certified (eid , aid) values (712, 159 );

create table Employees (eid int, ename char(15), salary int);
insert into Employees (eid , ename, salary) values (712, 'Ram',170000 );
insert into Employees (eid , ename, salary) values (745, 'Rajesh',190000 );
insert into Employees (eid , ename, salary) values (778, 'Rohan',99000 );

select aid from Aircraft,flights where froms='LA' and Tos='NYC' and distance <= ranges;

select f.flno from flights f,employees e, aircraft a,certified c where e.eid=c.eid and c.aid=a.aid and a.ranges>=f.distance and e.salary>100000; 

select e.ename from employees e, aircraft a,certified c where e.eid=c.eid and c.aid=a.aid and a.ranges>=3000 and a.aname!="Boeing";

select eid from employees  where salary=(select max(salary) from employees); 

select eid from employees where salary<(select max(salary) from employees) ;

#select e.eid from employees e,certified c group by c.eid having (select count(c.aid) from certified c ,employees e group by e.eid)=3;

select e.eid from employees e,certified c group by c.eid having count(c.aid)=3;