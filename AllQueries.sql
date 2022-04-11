create table student(id number(2),fname varchar2(10),email varchar2(20),subject varchar2(10));
create sequence student_seq
start with 11
increment by 1;
insert into student values(1,'Amit','Amit@gmail.com','Maths');
insert into student values(2,'Sumit','Sumit@gmail.com','Physics');
insert into student values(3,'Punit','Punit@gmail.com','Chemistry');
select * from student;
Select student seq.NEXTVAL from dual
insert into student values(?,?,?,?)

create table teacher(id number(2),tname varchar2(10),email varchar2(20),subject varchar2(10));
create sequence teacher_seq
start with 31
increment by 1;
insert into teacher values(21,'Amala','Amala@gmail.com','Maths');
insert into teacher values(22,'Kamala','Kamala@gmail.com','Physics');
insert into teacher values(23,'Vimala','Vimala@gmail.com','Chemistry');
select * from teacher;
select teacher seq.NEXTVAL from dual
insert into teacher values(?,?,?,?)

create table subject(id number(2),sname varchar2(10),time varchar2(15));
create sequence subject_seq
start with 51
increment by 1;
insert into subject values(41,'Maths','10am to 11am');
insert into subject values(42,'Physics','11am to 12pm');
insert into subject values(43,'Chemistry','12pm to 1pm');
select * from subject;
select subject seq.NEXTVAL from dual
insert into subject values(?,?,?)

select student.fname,subject.sname,subject.time,teacher.tname from student,subject,teacher where subject.sname=teacher.subject and student.subject=subject.sname and subject.sname='"
				+ request.getParameter("sname") + "'"