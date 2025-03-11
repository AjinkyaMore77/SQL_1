create table demo(id int, names varchar(10),age int, gender varchar(20),salary int, dept varchar(10),runs int, awards varchar(20))
insert demo values(1,'Virat kohli',35,'male',5000,'batsman',1222,'s'),
                  (2,'m.s.dhoni',39,'male',10000,'wicketkeeper',44444,'drg'),
                  (3,'smriti mandhana',26,'female',2500,'batsmen',222,'gdfg');
alter table demo alter column names varchar(20)
alter table demo alter column dept varchar(20)
select * from demo
alter table demo add runs int
update demo set runs=7000 where name='m.s.dhoni'
update demo set runs=18000 where name in('virat kohli','smriti mandhana')
update demo set runs= 200 
alter table demo add awards varchar(30)
update demo set awards='trophy'
delete demo where id=3
update demo set awards=null where name ='virat kohli'
delete demo delete awards where age=39
delete demo
alter table demo drop column awards
alter table demo add awards int
update demo set awards=5 where gender= 'male'
update demo set awards=3 where gender in ('female','male')
alter table demo alter column salary int
alter table demo alter column salary varchar(20)
select COUNT (names) as ajinkya from demo 
select MIN (salary) from demo;
select MAX (salary) from demo;
select AVG(salary) from demo;
select SUM(salary) from demo;
select distinct (dept) from demo;
select * from demo order by salary desc;
select top 2 * from demo ORDER by SALARY DESC
