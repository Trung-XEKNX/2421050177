create database netflix;

-- phim --
-- the_loai --
-- quoc_gia --
-- dien_vien --
-- dao_dien --
-- tap_phim --
-- nguoi_dung --

-- table Người dùng --
id int
ten_dang_nhap varchar(30)
mat_khau varchar(30)
email varchar(30)
ho_ten varchar(50)
ngay_sinh date 
so_dien_thoai varchar(10)
gioi_tinh boolean -- true: nam / false: nữ --



create table nguoi_dung (
	id int AUTO_INCREMENT PRIMARY KEY NOT NULL,
	ten_dang_nhap varchar(30) NOT NULL,
	mat_khau varchar(30) NOT NULL,
	email varchar(30) NOT NULL,
	ho_ten varchar(50) NOT NULL,
	ngay_sinh date NOT NULL,
	so_dien_thoai varchar(10) NOT NULL,
	gioi_tinh boolean NOT NULL
)

create table the_loai (
	id int AUTO_INCREMENT PRIMARY KEY,
	ten_the_loai varchar(255)
);

create table dien_vien(
    id int AUTO_INCREMENT PRIMARY KEY,
    ho_ten varchar(100),
    ngay_sinh date
);

CREATE TABLE dao_dien (
    id int AUTO_INCREMENT PRIMARY KEY,
    ho_ten varchar(100),
    ngay_sinh date
);

create table phim(
    id int AUTO_INCREMENT PRIMARY KEY,
    ten_phim varchar(255),
    quoc_gia varchar(100),
    dao_dien_id int,
    nam datetime,
	do_tuoi int,
	mo_ta varchar(255)
);

CREATE TABLE phim_the_loai (
    id int AUTO_INCREMENT PRIMARY key,
    phim_id int,
    the_loai_id int
);

CREATE TABLE phim_dien_vien (
    id int AUTO_INCREMENT PRIMARY KEY,
    phim_id int,
    dien_vien_id int
);