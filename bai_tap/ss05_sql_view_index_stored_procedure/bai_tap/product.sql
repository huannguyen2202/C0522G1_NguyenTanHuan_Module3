drop database if exists product;
create database product;
use product;

create table products(
id int primary key,
product_code varchar(50) not null,
product_name varchar(50) not null,
product_price int not null,
product_amount int not null,
product_description varchar(50) not null,
product_status bit
);

insert into products(id, product_code, product_name, product_price, product_amount, product_description, product_status)
values
(1,'M1','Mì Hảo Hảo', 5000, 20, 'kl 100 gr',1),
(2,'B1','Bánh oreo', 10000, 100, 'kl 50gr',1),
(3, 'K1','Kẹo dâu', 12000, 10, 'kl 20gr',0),
(4, 'BG1','Bột giặt omo', 25000, 15,'kl 200gr',1);

-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
create unique index i_product_code on products(product_code);
-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
create index i_product_name_price on products(product_name,product_price);
-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
explain select * 
from products 
where product_name = 'B1';
-- So sánh câu truy vấn trước và sau khi tạo index
explain select * 
from products 
where product_code = 'B1'; 
select * 
from products
where product_code = 'B1';
-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products. 
create view w_get_product as
select product_code, product_name,product_price,product_status
from products;
-- Tiến hành sửa đổi view
select * from w_get_product ;
update w_get_product set product_price = 10000 where id = 1;

-- Tiến hành xoá view
drop view w_get_product;
-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
delimiter //
create procedure sp_products()
begin
select * from products;
end //
delimiter ;
call sp_products();
-- Tạo store procedure thêm một sản phẩm mới
delimiter //
create procedure sp_add_products(in p_id int ,p_code varchar(50),p_name varchar(50),p_price int, p_amount int, p_description varchar(50),p_status bit)
begin
insert into products(id,product_code,product_name,product_price,product_amount,product_description,product_status) 
values
(p_id , p_code ,p_name ,p_price, p_amount , p_description,p_status );
end //
delimiter ;
call sp_add_products(5, 'D1','dầu gội', 50000, 15,'kl 200gr',1);
-- Tạo store procedure sửa thông tin sản phẩm theo id
delimiter //
create procedure sp_update_products(in  p_id int ,p_code varchar(50),p_name varchar(50),p_price int, p_amount int, p_description varchar(50),p_status bit )
begin
update products set
product_code = p_code,
product_name = p_name,
product_price =p_price,
product_amount = p_amount,
product_description = p_description,
product_status =p_status 
where id = p_id;
end //
delimiter ;
call sp_update_products(6, 'M1','mắm', 15000, 15,'kl 200gr',1);
-- Tạo store procedure xoá sản phẩm theo id
delimiter //
create procedure delete_product(in p_id int)
begin
delete from products
where id = p_id;
end //
delimiter ;
call delete_product(2);
call sp_products();


