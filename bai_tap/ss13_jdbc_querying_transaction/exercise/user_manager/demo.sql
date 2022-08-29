drop database if exists demo;

create database demo;
use demo;

create table user (
id int(3) primary key auto_increment,
name varchar(120) not null,
email varchar(220) not null,
country varchar(120)
);

insert into user (name, email, country)
values 
('huan nguyen', 'huannguyenbk97@gmail.com','Viet Nam'),
('nhon vo', 'nhonvo@gmail.com', 'Viet Nam');
