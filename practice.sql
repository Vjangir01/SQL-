create database jobs;

create table  IT_job(id int primary key ,branch varchar(10), sal int,city varchar(20));
insert into IT_job values(1,'IT',130000,'pune');
insert into IT_job values(2,'Data',30000,'nasik');
insert into IT_job values(3,'Testing',50000,'Mumbai');
insert into IT_job values(4,'Devops',470000,'pune');
select * from IT_job where city like 'n%';
select * from IT_job where city like '%e';
select * from IT_job where city like '%n%';
select * from IT_job where city like 'n%k';
select * from IT_job where city like '[na]%';

use jobs;
select min(sal)from IT_job;
select max(sal)from IT_job;
select sum(sal)from IT_job;
select avg(sal)from IT_job;

select * from IT_job;

create table NON_IT_Jobs(id int primary key ,
name varchar(20) ,age int )
insert into NON_IT_Jobs values(1,'akash',49);
insert into NON_IT_Jobs values(2,'aki',19);
insert into NON_IT_Jobs values(3,'pandu',29);
insert into NON_IT_Jobs values(4,'rita',29);
select * from NON_IT_Jobs where name like '[ak]%';
select * from NON_IT_Jobs where name like '[a-p]%';

select * from NON_IT_Jobs;

select * from NON_IT_Jobs where age <30 and name = 'aki';
select * from NON_IT_Jobs where age <30 or name = 'aki';

select * from NON_IT_Jobs where name between 'a' and 'r';
select * from NON_IT_Jobs where age in (1 ,29,30);

declare @val1 varchar(80) = 'keshavlalji';
print (@val1);
print datalength(@val1)
print len(@val1)

declare @value nchar(4000) = 'Vinay';
print @value
print datalength(@value)
print len(@value)  
/*  Vinay     in nchar 1char = 2 bit thats why here 4000*2 = 8000 datalength 
8000
5
*/

declare @value1 nchar(4000) = 'AMAR';
print @value1
print datalength(@value1)
print len(@value1)

declare @v nvarchar(4000) = 'python_SQL';
print @v
print datalength(@v)
print len(@v)

declare @d date = getdate();
select getdate();
declare @t time = getdate();
print @t
declare @datetime datetime = getdate();
print @datetime

select name,age from NON_IT_Jobs;

create table firsttable(FID int,FirstName varchar(10),LastName varchar(10),
city varchar(20),age int);
insert into firsttable(FID,FirstName) values(1,'parveen');
insert into firsttable(age,FirstName,LastName) values(31,4,'ruksaar');
insert into firsttable(age,FirstName,LastName,city) values(19,3,'priti','mumbai');
select * from firsttable;

create table employee
(EID int,
FirstName varchar(20),
LastName varchar(20),
Loc varchar(20),
Dept varchar(20),
salary int);

insert into employee values (1,'Rohan','Mane','Sangali','HR',15000)
insert into employee values (2,'Sheetal','Chavan','Parbhani','Finance',25000)
insert into employee values (3,'Amit','Patil','Latur','HR',16000)
insert into employee values (4,'Riya','Verma','Pune','Account',20000)
insert into employee values (5,'Sita','Sharma','Patna','HR',15000)
insert into employee values (6,'Kirti','Gold','Solapur','Staffing',35000)
insert into employee values (7,'Sohan','Jadhav','Miraj','Account',45000)
insert into employee values (8,'Priyanka','Sharma','Nagpur','Finance',46000)
insert into employee values (9,'Virat','Patil','Jaipur','Staffing',34000)
insert into employee values (10,'Sohil','Khan','Mumbai','HR',33000)
insert into employee values (11,'Ronit','Patil','Miraj','Admin',NULL)
insert into employee values(12,'kher','pandu','latur','civil engineer',20000);

select * from employee where FirstName like '%[r,t]';

SELECT FirstName, lastName
FROM employee
WHERE SUBSTRING(FirstName, LEN(FirstName) - 1, 1) = 't'
  or SUBSTRING(LastName, LEN(LastName) - 1, 1) = 't';


select FirstName from employee where SUBSTRING(FirstName,len(FirstName) -1,1)='t';
select FirstName from employee where FirstName like '%t_';
select * from employee;
select * ,monthlyincrement = salary+5000 from employee;
select * ,lossofpay  = 2*(salary/30) from employee;
select *,annualsalary = salary*12 from employee;
select * from employee where salary is NULL;
select * from employee where salary is not NULL;
select * from employee order by salary desc;
select * from employee order by salary;
select * from employee order by  LastName desc;
select * from employee order by FirstName;
select * from employee order by Loc;


create table UPDATE_DELETE (U_ID int,UNAME VARCHAR(20),ULOC VARCHAR(20));
insert into UPDATE_DELETE values(1,'naveen','delhi');
insert into UPDATE_DELETE values(2,'pinki','jaipur');
insert into UPDATE_DELETE values(3,'ravi','bilai');
insert into UPDATE_DELETE values(4,'swati','bilaspur');
insert into UPDATE_DELETE values(5,'vinay','pune');
select * from UPDATE_DELETE;
update  UPDATE_DELETE set ULOC = 'delhi' where U_ID >=3;
update UPDATE_DELETE SET ULOC ='Pune' where U_ID >=2;
update UPDATE_DELETE set UNAME = 'roshan' where U_ID = 2;
delete UPDATE_DELETE where U_ID = 2;
delete UPDATE_DELETE where ULOC= 'pune';
delete UPDATE_DELETE;

drop table UPDATE_DELETE;

-- truncate 

create table truncate1(U_ID int , UNAME varchar(20), ULOC varchar(20));
insert into truncate1 values(1,'sohan','delhi');
insert into truncate1 values (2,'kash','mumbai');
insert into truncate1 values (3,'priti','pune');
insert into truncate1 values (4,'vinita','jaipur');
insert into truncate1 values (5,'rita','jabalapur');
select * from truncate1;
truncate table truncate1;

---alter

create table alter_operation(AID int  not null ,ANAME varchar(20));
insert into alter_operation values(1,'rokan');
insert into alter_operation values (2,'raju');
insert into alter_operation values(3,'lalu');
insert into alter_operation values(4,'nitish');
insert into alter_operation values (5,'modi');
select * from alter_operation;
alter table alter_operation add loc varchar(20);
alter table alter_operation add pincode int , city varchar(20);
alter table alter_operation drop column loc;
alter table alter_operation drop column pincode,city;

alter table alter_operation alter column ANAME varchar(10);
alter table alter_operation alter column ANAME varchar(30);

--function ~~ min,max,count,top,sum,avg,distinct 

select * from employee order by salary desc;

--min()
select min(salary) as minsal from employee;
select min(FirstName) as minFN from employee;

--max()
select max(salary) as max_sal from employee;
select * from employee;

--count()
select count(*) as emp_count from employee;
select count(loc) from employee;
-- in count null values does not consider and count funtion need at least one argument(s).

select count(90900);
select count('python');
select count();
select count('a','b');
select count('A','B') 
select count('python') + count(8000);

insert into employee values(11,'asok',null,null,null,21000);

--top()
select top 4 * from employee;
select top (3) * from employee;
select top(3) Loc from employee;
select top(3) Loc,FirstName from employee;
select top (3) * from employee;
select top(3) salary from employee;

--sum()
select * from employee;
select  sum(salary) as total_sal  from employee;
select sum(Loc) as total_loc from employee;
select * from employee where EID =12;

--avg()
select avg(salary) as avg_sal from employee;
select sum(salary) as sum_sal from employee;
select count(salary) as count_sal from employee;
insert into employee values(null,'ETRENENEOEPE',null,null,null,null);
SELECT LEN(FirstName) - LEN(REPLACE(FirstName, 'E', '')) AS count_of_E from employee;
select DENSE_RANK() over (order by salary) as rank1 from employee;


select count(Loc) from employee;
select count(EID) from employee;
select count(*) from employee;
insert into employee values(null,null,null,null,null,null);
select * from employee;

--distinct
select distinct (salary) from employee;
select distinct(Loc) from employee;
select distinct(Dept) from employee;
select distinct(FirstName) from employee;
select distinct(LastName) from employee;
select count(distinct(salary)) from employee;
alter table employee add  age_e int default '29';
ALTER TABLE employee
ADD  age VARCHAR(10) DEFAULT '23';


SELECT MAX(salary) AS second_top_salary
FROM employee
WHERE salary < (SELECT MAX(salary) FROM employee);
select * from employee;

--Group by
--select col_name,agg_function(like min,max,sum,avg) from table_name group by col_name;

select Dept,max(salary) from employee group by Dept;
select Dept,min(salary) from employee group by Dept;
select  Dept ,count (EID) from employee group by Dept;
select Dept,count(*) from employee group by Dept;
select Dept,max(salary) from employee group by Dept order by max(salary) Desc;
select top 2 salary,count(*) from employee group by salary;

--clause order**
--Where     Group by     Having     Order By 
--Diff between Where clause and Having clause -1) Where clause did not required agg_funtion but Having clause need agg_function
-- 2) Where   apply on rows only but having clause apply after group build
--3) Where and Having both clause working as a filter but Having clause is depended on Group By clause.
--4) Where clause is independ clause on another side Having clause depends on Group By clause.

select Dept,max(salary) from employee
                         where Dept is not null
						 group by dept
					     order by max(salary) desc;

select Dept,max(salary) from employee
                        where Dept in ('HR','Finance')
						group by Dept
						order by max(salary) desc;

--Having Clause
--select col_name,agg_function(col_name2)from table_name Group by col_name having agg_function(col_name2)>1;

select Dept,count(EID) from employee group by Dept having count(EID)>1;
select Loc,sum(salary) from employee group by Loc;
select * from employee;
select salary,Dept, count(*) from employee group by salary,Dept having count(*)>=1;
select * from employee where  Dept != 'civil';

--contraints 
--1] primary key ~~~ pervent both Duplicate and NULL entries
--2] unique ~~~ pervent only Duplicate entries
--3] not null ~~~ pervent only NULL entries

--1] primary key

create table p1(id int primary key,name varchar(10));
insert into p1 values(1,'navad');
insert into p1 values(2,'kirti');
insert into p1 values(3,'keshav');
insert into p1 values(4,'nita');
insert into p1 values(5,'naved');
insert into p1 values(6,null);

--2] unique contraints

create table p2(id int primary key,name varchar(10) unique);
insert into p2 values(1,'kfc');
insert into p2 values(2,'KPIT');
insert into p2 values(3,null);

--3] not null contraints

create table p3 (id int primary key , name varchar(20)not null unique, city varchar(20) unique not null);
insert into p3 values(1,'akash','goa');
insert into p3 values(2,'priti','pune');

select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS where TABLE_NAME = 'p3';

--check()

create table p4 (id int,marks int check (marks between 40 and 50));
insert into p4 values(1,44);
insert into p4 values(1,33);
insert into p4 values(1,41);
insert into p4 values(1,40);

create table p5 (id int,marks int unique check (marks between 40 and 50));
insert into p5 values(1,50);
insert into p4 values(1,34);
insert into p4 values(1,54);
create table p6 (id int,marks int unique check (marks between 40 and 50));
insert into p6 values(1,40);
insert into p6 values(1,40);

create table p7(id int,gender VARCHAR(1),
    CONSTRAINT chk_gender CHECK (gender IN ('M', 'F'))
);
insert into p7 values(1,'M');
select * from p7;

--Default()
create table p8(id int, city varchar(20) default 'pune');
insert into p8 values(1,'mumbai');
insert into p8 values(3,default);
insert into p8 (id) values(2);
select * from p8;

--Auto Increments

create table p9 (id int identity , name varchar(10));
insert into p9 values('ak');
insert into p9 values('pk');
insert into p9 values('python');
insert into p9 values('java');
select * from p9;
create table p10 (id int identity (1000,1), name varchar(10));
insert into p10 values('tria');
insert into p10 values('tria');
insert into p10 values('tria');
insert into p10 values('tria');
select * from p10;
create table p11 (id int identity (1000,5), name varchar(10));
insert into p11 values('IT');
select * from p11;

--foreign key()

create table department1(DID int primary key identity ,Dept varchar(20));
insert into department1 values('Civil');
insert into department1 values('Mech');
insert into department1 values('IT');
insert into department1 values('ECE');
insert into department1 values('ENTC');
select * from department1;

create table student (s_id int ,name varchar (10),
                        DID int foreign key references
						department1(DID));
insert into student values(101,'aki',2);
insert into student values(101,'python',4);
insert into student values(103,'python',5);
select * from student;

--set operator
--1] Union
--2] Union all
--3] Intersect
--4] Except/Minus

A-[1,2,3,4]
B-[3,4,5,6]
A union B-[1,2,3,4,5,6]
A union all B-[1,2,3,4,3,4,5,6]
A intersect B-[3,4]
A except B-[1,2]
B except A-[5,6]

create table set1(S_ID int,SNAME varchar(20));
insert into set1 values(1,'A');
insert into set1 values(2,'B');
insert into set1 values(3,'C');
insert into set1 values(4,'D');

create table set2(S_ID int,SNAME varchar(20));
insert into set2 values(4,'D');
insert into set2 values(5,'E');
insert into set2 values(6,'F');
insert into set2 values(7,'G');
insert into set2 values(8,'H');
select * from set1;
select * from set2;

select * from set1 union select * from set2;
select * from set1 union all select * from set2;
select * from set1 intersect select * from set2;
select * from set1 except select * from set2;
select * from set2 except select * from set1;

--** join
--1. Inner join
--2. Outer join ~
--         1) Left outer join
--         2) Right outer join
--         3) full outer join
--3.SELF join
--4.Equi join
--5.Cross join

create table A(Aid int,name varchar(20));
insert into A values(1,'raman');
insert into A values(2,'tom');
insert into A values(3,'nita');
insert into A values(4,'hari');
insert into A values(5,'poo');

create table B1 (Bid int, name varchar(20) ,Aid int);
insert into B1 values(11,'poo',3);
insert into B1 values(12,'nita',4);
insert into B1 values(13,'raman',5);
insert into B1 values(14,'tom',6);
insert into B1 values(15,'kamlesh',7);

select * from A;
select * from B1;
--inner join()

select * from A join B1 on A.Aid=B1.Aid;
select* from A join B1 on A.name=B1.name;
select B1.Bid from A join B1 on A.Aid=B1.Aid;
select A.Aid from A join B1 on A.Aid=B1.Aid;
select Bid from A join B1 on A.Aid=B1.Aid;

--left outer join/ left join
select * from A left join B1 on A.Aid=B1.Aid;
select A.Aid,A.name from A left join B1 on A.Aid=B1.Aid;
select B1.Bid,B1.name from B1 right join A on B1.Aid=A.Aid;
select * from B1;
select * from A right join B1 on A.Aid=B1.Aid;
select * from B1 right join A on B1.Aid=A.Aid;
select * from A full join B1 on A.Aid=B1.Aid;
select * from A;
select * from B1;
select * from B1 left join A on A.Aid=B1.Aid;

select * from A right join B1 on A.Aid=B1.Aid;

--Question

create table AA (a_id int );
insert into AA values(2);
insert into AA values(3);
insert into AA values(4);
insert into AA values(null);
select * from AA;
create table BB(a_id int );
insert into BB values(4);
insert into BB values(6);
insert into BB values(8);
insert into BB values(9);
insert into BB values(null);
insert into BB values(null);
select * from BB;
select * from AA inner join BB on AA.a_id=BB.a_id;
select * from AA left join BB on AA.a_id=BB.a_id;
select * from AA right join BB on AA.a_id=BB.a_id;
select * from AA full join BB on AA.a_id=BB.a_id;

create table A2 (a_id int );
insert into A2 values(1);
insert into A2 values(1);
insert into A2 values(1);
insert into A2 values(null);
select * from A2;
create table B2(a_id int );
insert into B2 values(1);
insert into B2 values(1);
insert into B2 values(1);
insert into B2 values(1);
insert into B2 values(null);
insert into B2 values(null);
select * from B2;
select * from A2 inner join B2 on A2.a_id=B2.a_id; --12
select * from A2 left join B2 on A2.a_id=B2.a_id; --13 add null values also
select * from A2 right join B2 on A2.a_id=B2.a_id; --14 " "
select * from A2 full join B2 on A2.a_id=B2.a_id; --15 " "

--  A      B                innner join 12
--  1      1                left join   13
--  1      1                right join  14
--  1      1                full join   15
--  null   1                cross join = table A values * table B values includ null values also so here
--         null                   cross join = 4*6 = 24
--         null 

--equi join 
--select * from tab1,tab2 where tab1.t1_id=tab2.t1_id;
select * from A2 ,B2 where A2.a_id=B2.a_id;
select * from AA inner join BB on AA.a_id=BB.a_id;
select * from AA , BB where AA.a_id=BB.a_id;

create table EMP_new (id int,name varchar(10),company varchar(10),work varchar(10));
insert into EMP_new values(1,'amit','Info','pune');
insert into EMP_new values(2,'poja','tcs','mumbai');
insert into EMP_new values(3,'poonam','tech','pune');
insert into EMP_new values(4,'raman','logic','nagpur');
insert into EMP_new values(5,'nita','lim','nagpur');

select * from EMP_new;

create table job (salary int,vase varchar(10),id int);
insert into job values(10000,'pune',1);
insert into job values(20000,'mumbai',3);
insert into job values(30000,'nagpur',4);
insert into job values(40000,'pune',5);
insert into job values(35000,'nagar',2);

select * from job;
select * from EMP_new inner join job on EMP_new.id=job.id where work = vase;
select * from EMP_new,job where EMP_new.id=job.id and EMP_new.work=job.vase;

--5. Cross join
select * from EMP_new cross join job ;

--6. self join

create table study(name varchar(1),dept varchar(10));
insert into study values('A','entc');
insert into study values('B','mech');
insert into study values('C','civil');
insert into study values('D','entc');
insert into study values('E','mech');
select * from study;

select * from study as T1,study as T2 where T1.dept=T2.dept and T1.name!=T2.name;

create table emp(id int,name varchar(10),manger_id int);
insert into emp values(1,'A',4);
insert into emp values(2,'B',1);
insert into emp values(3,'C',5);
insert into emp values(4,'D',2);
insert into emp values(5,'E',null);
select * from emp;

select * from emp as t1,emp as t2 where t1.id=t2.manger_id

--date function

select getdate() as today_date;
select getdate()-1 as yesterday_date; 
select getdate() +1 as Tomorrow_date --Tomorrow date 

select getdate() +2;

--There are three diffrent functions in SQL to modify or perform any date related task
--1.DATEDIFF() --3 agruments required
--2.DATEPART()--3 agruments required
--3.DATEADD()--2 agruments required

--1.datediff() function
--The datediff function requires 3 argument(s).
--If we provide more than 3 arguments then it will through an exception 
--select DATEDIFF(interval,date1,date2);
select datediff(yy,'1996-11-26',getdate()) as curr_age;
select datediff(mm,'1996-11-26',getdate()) as curr_age;



Create table Account_details (
ACCT_NUMBER int primary key identity(11112881,1),
ACCT_NAME varchar(20),
ACCT_OPEN_DATE date,
BRANCH Varchar(20))

insert into Account_details values ('Shubham','2015/12/09','MUMBAI')
insert into Account_details values ('Rihan','2016/01/12','Jaipur')
insert into Account_details values ('Sheetal','2017/08/11','GOA')
insert into Account_details values ('Priyanka','2017/01/01','Chennai')
insert into Account_details values ('Manik','2015/01/08','Agra')
insert into Account_details values ('Veena','2021/01/01','Patna')
insert into Account_details values ('Rohan','2019/07/01','Pune')
insert into Account_details values ('Laxmi',GETDATE(),'rohatak')
insert into Account_details values ('Jinal',GETDATE(),'Indore')

select * from Account_details;
select *,DATEDIFF(mm,ACCT_OPEN_DATE,getdate()) as acct_diff from Account_details;
select *,DATEDIFF(yy,ACCT_OPEN_DATE,getdate()) as acct_diff from Account_details;
select *,DATEDIFF(dy,ACCT_OPEN_DATE,getdate()) as acct_diff from Account_details;

--dateadd

select dateadd(yy,27,getdate());
select dateadd(mm,2,getdate());
select dateadd(hh,6,getdate());
select Acct_open_date,dateadd(yy,20,acct_open_date) as add_new from Account_details;

--datepart
select datepart(yy,getdate());
select *,datepart(mm,acct_open_date) as part from Account_details;
select *,datepart(yy,acct_open_date) as part from Account_details;
select *,datepart(dy,acct_open_date) as part from Account_details;

Create table Account_details_new (
ACCT_NUMBER int primary key identity(11112881,1),
ACCT_NAME varchar(20),
ACCT_OPEN_DATE datetime,
BRANCH Varchar(20));
insert into Account_details_new values('aki','2014/11/02 07:23:32:455','pune');
insert into Account_details_new values('aki','2024/11/02 09:23:32:455','pune');
select*,datepart(hh,Acct_open_date) as part from Account_details_new;

--subquery,corelational--exit/not exit
select max(salary) from job where salary <
                                   (select max(salary) from job);

select * from job where salary < (select max(salary) from job);
select * from job;

create table people(city varchar(10),lang varchar(10));
insert into people values('mumbai','marathi');
insert into people values('pune','marathi');
insert into people values('jaipur','hindi');
insert into people values('nagpur','marathi');
insert into people values('delhi','hindi');
select * from people;


Create Table customer(C_ID varchar(5) primary key ,CNAME varchar(20),Loc varchar(20))


insert into customer values('C1','AMIT','PUNE')
insert into customer values('C2','Sumit','Delhi')
insert into customer values('C3','varun','Mumbai')
insert into customer values('C4','snehal','Latur')
insert into customer values('C5','Raj','Sangli')
insert into customer values('C6','Mohit','Satara')

select * from customer

create table orders(OID int primary key, CID varchar(5),groceries varchar(20))

insert into orders values(1,'C2','almonds')
insert into orders values(2,'C3','deo')
insert into orders values(3,'C1','milk')
insert into orders values(4,'C2','soap') 
insert into orders values(5,'C4','dishes')
insert into orders values(6,'C2','rice')

select * from orders;

select * from customer where exists ( select * from orders where customer.C_ID=orders.CID);
select * from customer where not exists ( select * from orders where customer.C_ID=orders.CID);

--RANK,DENSE RANK AND ROW NUMBER

--Rank() and DenseRank()
--It will return a rank starting at 1 based on ordering of rows and imposed by order by clause.
--Order by clause is required mandatory.
--PARTITION BY Clause is optional.

--Rank Syntax: RANK() OVER (ORDER BY col1,col2,....coln ASC/DESC [PARTITION BY Col1,col2...coln]) 

--Dense_Rank Syntax: DENSE_RANK() OVER (ORDER BY col1,col2,....coln ASC/DESC [PARTITION BY Col1,col2...coln])

select * from employee;
select *,rank() over (order by salary desc) as rank1 from employee;
select *, dense_rank() over (order by salary desc) as dense_rank1 from employee;
select *,dense_rank() over (order by salary,Loc desc) as dense_rank1 from employee

with new_table as
 (select *, dense_rank() over (order by salary desc) as row from employee)
     select * from new_table where row <= 2;
select * from employee;
with new_table as
(select *, DENSE_RANK() over (partition by Dept order by salary desc) as rowid from employee)
select * from new_table where rowid=2;
with new_table as
 (select *, dense_rank() over (order by salary desc) as rowid from employee)
     select * from new_table where rowid = 2;

--4th min salary
with new_4th_min as
(select *, dense_rank() over (order by salary) as rowid from employee)
select * from new_4th_min where rowid=2 ;

alter table employee drop  column age,age_e ;
select * from employee;
--partition dense_rank
with new_table as
(select *, DENSE_RANK() over (partition by Dept order by salary desc) as rowid from employee)
select * from new_table where rowid=2;

select * from employee;
with new_table as
(select *, DENSE_RANK() over (partition by LastName  order by salary desc) as rowid from employee)
select * from new_table where rowid=2;

create table over_test(EMPID int,FirstName varchar(20),Gender varchar(2),salary int);
insert into over_test values(1,'Mohini','F',1000);
insert into over_test values(2,'Rohit','M',2000);
insert into over_test values(3,'Amit','M',4000);
insert into over_test values(4,'Sonal','F',5000);
insert into over_test values(5,'Minal','F',6000);
insert into over_test values(6,'Amar','M',3600);
insert into over_test values(7,'Sital','F',4500);
insert into over_test values(8,'Sohil','M',6000);
insert into over_test values(9,'Praveen','M',9000);
insert into over_test values(10,'Mithali','F',9000);
insert into over_test values(11,'Seema','F',9000);
insert into over_test values(12,'Meena','F',10000);
select * from over_test;
-- find max_salary gender wise

select gender, max(salary) from over_test group by  gender; 
select gender,count(*) from over_test group by gender;
select gender,max(salary) from over_test group by Gender order by max(salary) Desc;
select top 5 salary,count(*) from over_test group by salary;

select gender, max(salary) as max_sal from over_test group by  gender; 

with cte as
(select *,DENSE_RANK()over(partition by gender order by salary desc) as new from over_test)
select * from cte where new=1;

(select *,DENSE_RANK()over(partition by gender order by salary desc) as new from over_test);

SELECT *
FROM over_test
GROUP BY EMPID, FirstName, Gender, salary
HAVING COUNT(*) >= 1;

--isnull

create table null_test(nid int,emp_name varchar(10),manager varchar(10));
insert into null_test values(1,'soham','manas');
insert into null_test values(2,'raman',null);
insert into null_test values(3,'viany','swati');
insert into null_test values(4,'pooja',null);
insert into null_test values(5,'kiran','priti');

select * from null_test;

select *,ISNULL(manager,'No Manager') as new_col from null_test;

create table test(M1 int,M2 int);
insert into test values(40,50);
insert into test values(60,null);
insert into test values(null,80);
select * from test;

SELECT M1, M2, ISNULL(M1, 0) + ISNULL(M2, 0) AS Sum
FROM test;


