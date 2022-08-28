drop database if exists quan_ly_user;
create database quan_ly_user;
use quan_ly_user;
create table users(
id int(3) auto_increment primary key,
`name` varchar(120) ,
email varchar(220),
country varchar(120));
insert into users(`name`,email,country)
values ("Huỳnh Văn Nam","namhuynh191193@gmail.com","Việt Nam"),
	   ("Ronadol","ronadol@gmail.com","Portuguese");