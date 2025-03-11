select * from Self_info
insert into Self_info values ('vedant','vitthal','dhekale','23/11/95',28),
('Rohit','','Patil',null,30)
insert into Self_info values ('Shyam','','yashwante','11/11/93',31),
('himanshu','singh','pratap',null,40)
insert into Self_info values ('Akanksha','bhai','kujur','11/11/93',29),
('shubh','shiv','pure','10/11/2002','')

select * from Self_info where Age<=25
select * from Self_info where Age>=25
select * from Self_info where First_name='vedant'
select * from Self_info where Middle_name=''
select * from Self_info where Middle_name<>''

insert into Self_info values ('naman','bhai','shreeman','11/11/93',25)
delete from Self_info where First_name='vedant'

------
select * from Self_info where First_name in ('s%','Rohit','Ajinkya')
select * from Self_info where First_name not in ('vvvv','Ajinkya')


-----
select * from Self_info where Birth_date is null
select * from Self_info where Birth_date IS NOT NULL

-------------
SELECT * FROM Self_info WHERE First_name = 'Ajinkya' and age <>50
select * from Self_info where last_name = 'More' or age is null
select * from Self_info where Age in (22,30,40) and First_name <> 'shubh' or Middle_name = 'bhai'


------
alter table self_info add id int
select id ,* from Self_info
--------------------------------
select * from Self_info
---between 
select * from Self_info where Age between 30 and 40
select * from Self_info where First_name between 'R' and 'zz'
select * from Self_info where Age not between 30 and 40

--------like
select * from Self_info where First_name like 'a%' --- for starting char
select * from Self_info where First_name like '%t' ----for ending char
select * from Self_info where First_name like '%h%' --- for anywhere in middle
select * from Self_info where First_name like '_j%'
select * from Self_info where First_name like '%k__'
select * from Self_info where First_name like '[a-h]%'
select * from Self_info where Age like '[20-31]%'
----------------
---arithmatic operation +-/*
select * from Self_info
select *,New_age= Age+3 from Self_info 
select *,New_age= Age+3 from Self_info where Age like '[20-31]%'
select * from Self_info where First_name not like ('A%')
