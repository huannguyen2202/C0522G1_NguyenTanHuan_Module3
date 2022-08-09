drop database if exists quan_ly_ban_hang;
create database quan_ly_ban_hang;
use quan_ly_ban_hang;

create table customer(
c_id int primary key,
c_name varchar(50),
c_age int
);

create table `order`(
o_id int primary key,
c_id int,
foreign key(c_id) references customer(c_id),
o_date date,
o_total_price double
);

create table product(
p_id int primary key,
p_name varchar(50),
p_price double
);

create table order_detail(

);