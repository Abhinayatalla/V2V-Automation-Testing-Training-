create table empinfo(emp_id int PRIMARY KEY NOT NULL, emp_name varchar(30),pid int);
create table perinfo(pid int PRIMARY KEY NOT NULL,pid_name varchar(20) NOT NULL);
insert into empinfo values(23,'Abhi',10);
insert into empinfo values(24,'naya',20);
insert into empinfo values(25,'ajay',30);
insert into empinfo values(26,'shiv');
insert into empinfo values(27,'pap');
insert into empinfo values(28,'pap');
update empinfo set pid=40 where emp_id=26;
select * from empinfo;
insert into perinfo values(10,'ai');
insert into perinfo values(20,'na');
insert into perinfo values(30,'ay');
insert into perinfo values(40,'sh');
insert into perinfo values(50,'pp');
select * from perinfo;
select * from perinfo where pid>20;
select * from empinfo where emp_name like '%i';
select * from empinfo where emp_name  not like '%a';
select * from empinfo where emp_name like 'A%';
select * from empinfo where emp_name like '%h%';
select e.emp_name,p.pid_name from empinfo e INNER JOIN perinfo p ON e.pid=p.pid;
select * from empinfo e INNER JOIN perinfo p ON e.pid=p.pid;
select * from empinfo e LEFT JOIN perinfo p ON e.pid=p.pid;
select * from empinfo e RIGHT JOIN perinfo p ON e.pid=p.pid;
select * from empinfo e FULL JOIN perinfo p ON e.pid=p.pid;
select * from empinfo e FULL OUTER JOIN perinfo p ON e.pid=p.pid;
select distinct emp_name from empinfo;
select count(*) from empinfo;
select count(distinct emp_name) from empinfo;
select sum(emp_id) from empinfo;
select avg(emp_id) from empinfo;
select min(emp_id) from empinfo;
select max(emp_id) from empinfo;
alter table empinfo add dept varchar(30);
update empinfo set dept='dev' where emp_id=23;
update empinfo set dept='test' where emp_id=24;
update empinfo set dept='dev' where emp_id=25;
update empinfo set dept='analyst' where emp_id=26;
update empinfo set dept='test' where emp_id=27;
update empinfo set dept='dev' where emp_id=28;
select dept from empinfo group by dept;
select dept,count(*) from empinfo group by dept having count(*)>1;
select * from empinfo order by emp_name DESC;
select * from empinfo order by pid ASC;













