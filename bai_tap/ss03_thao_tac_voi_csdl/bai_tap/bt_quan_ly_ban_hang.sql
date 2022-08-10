drop database if exists quan_ly_ban_hang;
create database quan_ly_ban_hang;
use quan_ly_ban_hang;
create table customer(
customer_id int primary key auto_increment,
`name` varchar(45),
age int
);

create table `order`(
order_id int primary key auto_increment,
    customer_id int,
    order_date date,
    total_price double,
    foreign key (customer_id) references customer (customer_id)
);

create table product (
    product_id int primary key auto_increment,
    `name` varchar(45),
    price double
);

create table order_detail (
    detail_id int,
    product_id int,
    order_qty int,
    foreign key (detail_id) references `order` (order_id),
    foreign key (product_id) references product (product_id)
);

insert into customer(`name`,age)
values
('Minh Quan',10),
('Ngoc Oanh',20),
('Hong Ha',50);

insert into `order`(customer_id,order_date,total_price)
values 
(1,'2006/3/21',null),
(2,'2006/3/23',null),
(1,'2006/3/16',null);

insert into product( `name`,price)
values
('May Giat',3),
('Tu Lanh',5),
('Dieu Hoa',7),
('Quat',1),
('Bep Dien',2);

insert into order_detail(detail_id,product_id,order_qty)
values
(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);

select order_id,order_date,total_price from `order`;

select customer.`name`,product.`name`,`order`.order_date from customer
join `order` on customer.customer_id=`order`.customer_id
join order_detail on order_detail.detail_id=`order`.order_id
join product on product.product_id=order_detail.product_id;

select * from customer
where customer.customer_id
not in 
(select customer.customer_id from customer
 join `order` on customer.customer_id=`order`.customer_id
 join order_detail on order_detail.detail_id=`order`.order_id
 join product on product.product_id=order_detail.product_id);
 
select `order`.order_id,order_date,(order_detail.order_qty*product.price)as gia_ban_tung_loai,sum(order_detail.order_qty*product.price) as gia_ban_tung_hoa_don from `order`
join order_detail on `order`.order_id=order_detail.detail_id
join product on product.product_id=order_detail.product_id
group by `order`.order_id;