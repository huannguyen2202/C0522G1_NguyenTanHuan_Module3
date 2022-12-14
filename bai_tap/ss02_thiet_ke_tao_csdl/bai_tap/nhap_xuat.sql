drop database if exists nhap_xuat;
create database nhap_xuat;
use nhap_xuat;

create table phieu_xuat(
so_px int primary key,
ngay_xuat varchar(50)
);

create table vat_tu(
ma_vtu int primary key,
ten_vtu varchar(50)
);

create table phieu_nhap(
so_pn int primary key,
ngay_nhap varchar(50)
);

create table nha_cc(
ma_ncc int primary key,
ten_ncc varchar(50),
dia_chi varchar(50),
so_dien_thoai varchar(50)
);

create table don_dh(
so_dh int primary key,
ngay_dh varchar(50)
);



create table chi_tiet_phieu_xuat(
dg_xuat int,
sl_xuat int,
so_px int,
ma_vtu int,
primary key(so_px,ma_vtu),
foreign key(so_px) references phieu_xuat(so_px),
foreign key(ma_vtu) references vat_tu(ma_vtu)
);

create table chi_tiet_phieu_nhap(
dg_nhap int,
sl_nhap int,
ma_vtu int,
so_pn int,
primary key(ma_vtu,so_pn),
foreign key(ma_vtu) references vat_tu(ma_vtu),
foreign key(so_pn) references phieu_nhap(so_pn)
);

create table chi_tiet_don_dat_hang(
ma_vtu int,
so_dh int,
ma_vtu int,
so_dh int,
primary key(ma_vtu,so_dh),
foreign key(ma_vtu) references vat_tu(ma_vtu),
foreign key(so_dh) references don_dh(so_dh)
);

create table sdt_ncc(
sdt varchar(10) primary key,
ma_ncc int,
foreign key(ma_ncc) references nha_cc(ma_ncc)
);



