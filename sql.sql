create database student_examination_sys;
use student_examination_sys;
create table student(
	id varchar(5) not null unique,
    name varchar(10) default null,
    age int(3) default null,
    sex enum('male','female') default null,
    constraint student_pk primary key(id)
);
create table subject(
	id varchar(5) not null unique,
    subject varchar(20) default null,
    teacher varchar(20) default null,
    description varchar(255) default null,
    constraint subject_pk primary key(id)
);
create table score(
	id int not null auto_increment,
    student_id varchar(5),
    subject_id varchar(5),
    score double(3,1) default 0,
    constraint score_pk primary key(id),
    constraint student_id_fk foreign key(student_id) references student(id),
    constraint subject_id_fk foreign key(subject_id) references subject(id)
);

insert into student values ('001','zhangsan',18,'male'),('002','lisi',20,'female');
insert into subject values ('1001','Chinese','Mr.Wang','the exam is easy'),('1002','math','Miss Liu','the exam is diffcult');
insert into score values (1,'001','1001',80),(2,'002','1002',60),(3,'001','1001',70),(4,'002','1002',60.5);