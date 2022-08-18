use furama_resort;

-- 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.
select nv.ma_nhan_vien, nv.ho_ten
from nhan_vien nv
left join hop_dong hd on nv.ma_nhan_vien = hd.ma_nhan_vien
where hd.ma_hop_dong is null ;

-- 17.Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, chỉ cập nhật những khách hàng đã từng đặt phòng 
-- với Tổng Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ.
-- select kh.ma_khach_hang, kh.ho_ten, lk.ma_loai_khach, 
-- from khach_hang kh
-- join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
-- join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang

-- 18.Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).
select kh.ma_khach_hang, kh.ho_ten
from khach_hang kh
join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang
where year(hd.ngay_lam_hop_dong) < 2021;

-- 19.Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.
select dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem
from dich_vu_di_kem dvdk
join hop_dong_chi_tiet hdct on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
join hop_dong hd on hdct.ma_hop_dong = hd.ma_hop_dong
where year(hd.ngay_lam_hop_dong)=2020 and hdct.so_luong>10;

-- 20.Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống, 
-- thông tin hiển thị bao gồm id (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.
select nv.ma_nhan_vien as id, nv.ho_ten, nv.email, nv.so_dien_thoai, nv.ngay_sinh, nv.dia_chi 
from nhan_vien nv
union
select kh.ma_khach_hang as id, kh.ho_ten, kh.email, kh.so_dien_thoai, kh.ngay_sinh, kh.dia_chi 
from khach_hang kh;