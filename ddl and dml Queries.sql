--dml ---
--update
--update table_name set column_name=value
select * from Emp_Details
update Emp_details set Age=35 where Id in(9,29)
update Emp_details set Salary=Salary+100000 where Dept= 'IT'

---delete
--delete work
delete Emp_details WHERE Id in (5,10)


----ddl
--drop
drop table table_name ---whole table structure is delete
truncate table table_name -- whole data will be delete

--Alter
--to add column
alter table Emp_details add location varchar(20)
update Emp_details set location='india' where Id in(1,3,4,5,6,8,9,15)
alter table Emp_details drop column location

--change datatypes
alter table Emp_details alter column salary varchar(20)
alter table Emp_details alter column salary int
select * from INFORMATION_SCHEMA.COLUMNS

--change data length
alter table Emp_details alter column salary varchar(10)
alter table Emp_details alter column salary varchar(5)

--aggregate functions
--min
--max
--sum
--avg
select MIN(Salary) m1in from Emp_details
select MAX(Salary) m1ax from Emp_details
select SUM(salary) s1um from Emp_details
select AVG(salary) a1vg from Emp_details
select COUNT(salary) c1ount from Emp_details

--distinct
select distinct (dept) from Emp_details
select COUNT (distinct(dept)) from Emp_details

--top
select top 5 * from Emp_details
select top 13 salary from Emp_details