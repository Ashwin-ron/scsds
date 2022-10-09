show databases;
drop database crud_operation;

create database crud_operation;
show databases;
use crud_operation;
truncate table user_details;
create table user_details(
ID int not null auto_increment,
Name varchar(20) not null,
DOB date not null,
Profession varchar(30) default null,
primary key (ID)
);
insert into user_details (Name, DOB, Profession) values ('Ashwin',10/06/1997, 'Backend Developer'),('Raswin',29/06/1997 , 'ADMS'),('Abija',13/03/1999 , 'Dentist'),
('Ram',16/06/1997 , 'Full stack Developer'),('Fasna',13/04/1997 , 'Dentist'),('Franklin',12/04/1997 , 'Dentist'),('Pandi',11/08/1989 , 'Teacher'),
('Solomon',14/04/1993 , 'S7R CEO'),('Keerthana',13/05/1999 , 'Junior Assistant'),('Shinly',12/10/1999 , 'Teacher'),('Johnthark',25/05/1972 , 'Beautician'),
('Sekaran',01/10/1964 , 'EX-Servicemen');

update user_details set DOB = '10.06.1997' where id =1;
update user_details set DOB = '29.06.1997' where id =2;
update user_details set DOB = '13.03.1999' where id =3;
update user_details set DOB = '16.06.1997' where id =4;
update user_details set DOB = '13.04.1997' where id =5;
update user_details set DOB = '12.04.1997' where id =6;
update user_details set DOB = '11.08.1997' where id =7;
update user_details set DOB = '14.04.1993' where id =8;
update user_details set DOB = '13.05.1999' where id =9;
update user_details set DOB = '12.10.1999' where id =10;
update user_details set DOB = '25.05.1972' where id =11;
update user_details set DOB = '01.10.1964' where id =12;
select*from user_details;
