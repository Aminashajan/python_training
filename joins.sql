use db2;
create table student4(StudID int primary key,Studname varchar(20) not null,studaddress varchar(20));
insert into student4 values(1005,"Amina","Thevaiyur");
insert into student4 values(1009,"Arif","karur");
insert into student4 values(1005,"zaina","Trichy");
select * from student4;
desc student4;
insert into student4 values(1003,"syf","srilanka");
insert into student4 values(1006,"lang","mandarin");
desc student4;
select * from student4;
use db2;
create table department(deptid int primary key,deptname varchar(20));
use db2;
create table student22(studentid int primary key,name varchar(50), deptid int,foreign key (deptid) references department(deptid));
insert into department values(1104,"cse"),(1105,"IT"),(1107,"AIDS");
insert into student22 values(1,"amuna",1104),(2,"arif",1105),(3,"syf",1107);
select * from department;
select * from student22;
use db2;
select department.deptname,student22.name from department inner join student22 on department.deptid=student22.deptid;
select department.deptname,student22.name from department left outer join student22 on department.deptid=student22.deptid;
select department.deptname,student22.name from department right outer join student22 on department.deptid=student22.deptid;
select department.deptname,student22.name from department  join student22 on department.deptid=student22.deptid
select department.deptname,student22.name 
from department
cross join student22 on department.deptid=student22.deptid;




