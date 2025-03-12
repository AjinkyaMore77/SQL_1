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


--4.check(to restrict date to a specific value or it can limit the values allowed in a column)
create table L4 (id int,age int check(age>=18),city varchar(20) check(city='pune'))
insert into L4 values(1,18,'pune')
insert into L4 values(2,15,'pune')
insert into L4 values(3,28,'Mumbai')
select * from L4 
alter table L4 add gender varchar(1) check (gender in ('m','f'))
update L4 set gender='m' 


--5.Default(sest the default values of a column)
create table L5 (id int, city varchar(20) default 'pune')
insert into L5 values (1,default)
insert into L5 (id) values(2)
insert into L5 (id) values (3),(4),(5)
insert into L5 values (6,'Mumbai')
select * from L5


--6.auto increament(identity)(used only once for a column in a table,to add values automatically)
 --(default start=1 and increament =1)
create table L6 (id int identity,name varchar(20))
insert into L6 values ('ajinkya')
select * from L6
create table L61 (id int identity(100,100)primary key,name varchar(20))
insert into L61 values ('a'),('b'),('c'),('d')
select * from L61


 --7.foreign Key(to connect Mulltiple tables, connected to primary key table,PK is acts as reference)
   --(Pk called parent table and Fk is child table)
create table P_K (id int identity primary Key, name varchar(20),city varchar(20))
insert into P_K values('ajinkya','pune'),('rohit','kolhapur'),('shubh','delhi')
select * from P_K 
create Table F_k (id int foreign key references P_K(id),salary int, dept varchar(20))
insert into F_k values (2,50000,'It')
select * from F_k 
insert into F_k  values(4,4000,'mech')