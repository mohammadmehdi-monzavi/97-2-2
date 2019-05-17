
insert into teacher(id_person,code_master,education)values('002','892','doctora');

insert into person(id_person,name,family,code_meli)values('001','javad','hoseeini','005875');
insert into person(id_person,name,family,code_meli)values('002','saman','arshadi','005486');
insert into person(id_person,name,family,code_meli)values('003','soheil','bakhshi','006481');



insert into major(id,name,code_major,zarfiat,tedad_vahd)values('1','computer','1321','100','74');
insert into major(id,name,code_major,zarfiat,tedad_vahd)values('2','ict','1477','60','55');


insert into student(id_person,student_number,id)values('003','96210033154076','1');


 update person set name='ali',family='alipour'where id_person='001';

 select* from person join teacher on person.id_person=teacher.id_person;

 select*from person,teacher where person.id_person=teacher.id_person;

  select*from student,person,major where student.id_person=person.id_person;
  
  delete from person where id_person=1;


select * from person;
select *from teacher;
select *from major;
select*from student;

/*this function in sql*/

select count(id_person) from person;
select max(id_person) from person;
select min(code_meli) from person;
select concat(name,family) from person;
select replace(name,'a','e') from person;
select *from person where id_person>1 and id_person<3;
select *from person order by code_meli desc;
select *from person order by code_meli asc;
select *from person where name like '%s%';
select *from person where name like 'a%';
select top 2* from person;
select top 2* from person order by code_meli asc;
select top 2* from person order by code_meli desc;


select count(*), code_meli from person group by code_meli;
select count(*), family from person group by family;
select max(*), zarfiat from major group by zarfiat;
select count(id), zarfiat from major group by zarfiat having count (id>1);



