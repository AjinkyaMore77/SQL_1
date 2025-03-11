select * from Emp_details
select Dept, MIN (Salary) from Emp_details group by dept
select dept , COUNT (*) from Emp_details group by dept
select dept, MAX (salary) from Emp_details group by dept having MAX (Salary)>60000
-----
select dept, MAX (salary) maxsal from Emp_details 
             where Dept is not null and Dept<>'' 
             group by Dept having MAX(salary)>25000 
			 order by MAX(Salary)desc
-----
--Question
 --roll no, name,city,subject, marks ---100
 --sub wise avg marks
 --name should start with a,p,c,k
 --roll no in between 31 to 50
 --city should not be mumbai
 --avg markd should be in between 50to100
 --avg marks should be desc order
 select subject, AVG(marks) from student_info 
							where name like [a,p,k,c]% 
							and rollno between 31 and 50
							and city <>'mumbai' 
							group by sub 
							having avg(marks) between 50 and 100 
							order by avg(marks) desc


--------------------------------------------------------------------------
--constraints
--1.Primary Keys(no null and no duplicates)(add only one to a table)
create table L1(id int primary key,name varchar(20))
insert into L1 values (1,'ll')
insert into L1 values (2,null)
insert into L1 values (3,'jjfk')
select * from L1


--2.Unique(can add null once but cant add duplicate)(if you used the primary to a column then you use unique to another column)
create table L2 (id int unique, age int)
insert into L2 values(null,25)
insert into L2 values(null,26)
insert into L2 values (2,27)
select * from L2


--3.not null(cannot add null can add duplicate,)
create table L3 (id int primary key, first_name varchar(20)not null)
insert into L3 values (1,'dd')
insert into L3 values (2,'')
insert into L3 values (4,'dd')
select * from L3
alter table L3 alter column id int not null
insert into L3 values(3,'null')

----------------------------------------------------------------