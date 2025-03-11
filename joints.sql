create table T1 (Id int)
create table T2 (Id int)
insert into T1 values(null)
insert into T2 values(1),(1),(1),(1),(null),(null)
select * from T3
select * from T2
create table T3 (Id int)
insert into T3 values(1),(1),(1),(null)
--join
select * from T3 join T2 on T3.Id=T2.Id
select* from T3 left join T2 on T3.Id = T2.Id 
select * from T3 right join T2 on T3.Id= T2.Id 
select * from T3 full join T2 on T3.Id = T2.Id
--
create Table t11(id varchar(20))
create table t22(id varchar(20))
insert into t11 values ('a'),('b'),('B'),('c'),(null),('a'),('b')
insert into t22 values ('c'),('c'),('c'),(null),(null),('a'),('a'),('d'),('d')
select * from t11
select * from t22
select * from t11 join t22 on t11.id=t22.id 
select * from t11 left join t22 on t11.id=t22.id 
select * from t11 right join t22 on t11.id=t22.id 
select * from t11 full join t22 on t11.id=t22.id 
--set
select * from t11 union select * from T22
select * from t11 union all select * from t22
select * from t11 intersect select * from t22
select * from t11 except select * from t22
select * from t22 except select * from t11







