create database Mini_test_tuan1_md3;
use Mini_test_tuan1_md3;

create table Address (
    id int not null primary key ,
    address varchar(50)
);

create table Class (
 id int not null primary key ,
 name varchar(50),
 language varchar(50),
 description varchar(50)
);

create table Student (
    id int not null primary key ,
    address_id int ,
    class_id int,
    fullName varchar(50),
    age int,
    phone varchar(20),
    unique (phone),
    foreign key (address_id) references Address (id),
    foreign key (class_id) references Class (id)
);

create table Course (
    id int not null primary key ,
    name varchar(50),
    description varchar(50)
);

create table Point (
    id int not null primary key ,
    course_id int ,
    student_id int ,
    point float,
    foreign key (course_id) references Course (id),
    foreign key (student_id) references Student (id) 
) ;