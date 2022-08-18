use furama_resort;

-- 21. Tạo khung nhìn có tên là v_nhan_vien để lấy được thông tin của tất cả các nhân viên có địa chỉ là “Hải Châu” 
-- và đã từng lập hợp đồng cho một hoặc nhiều khách hàng bất kì với ngày lập hợp đồng là “12/12/2019”.
create view v_nhan_vien as
select nv.ma_nhan_vien, nv.ho_ten, nv.dia_chi, hd.ngay_lam_hop_dong
from nhan_vien nv
join hop_dong hd on hd.ma_nhan_vien = nv.ma_nhan_vien
where nv.dia_chi like '%Hải Châu%' and hd.ngay_lam_hop_dong = '2019-12-12';
select * from v_nhan_vien;
drop view v_nhan_vien;

-- 22. Thông qua khung nhìn v_nhan_vien thực hiện cập nhật địa chỉ thành “Liên Chiểu” đối với tất cả các nhân viên được nhìn thấy bởi khung nhìn này.
update v_nhan_vien set dia_chi = 'Liên Chiểu, Đà Nẵng';

-- 23. Tạo Stored Procedure sp_xoa_khach_hang dùng để xóa thông tin của một khách hàng nào đó với ma_khach_hang được truyền vào như là 1 tham số của sp_xoa_khach_hang.
