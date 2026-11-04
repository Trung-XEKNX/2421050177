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



create table if not EXISTS the_loai (
	id int AUTO_INCREMENT PRIMARY KEY not null,
	ten_the_loai varchar(255) not null
);

create table if not EXISTS dien_vien(
    id int AUTO_INCREMENT PRIMARY KEY not null,
    ho_ten varchar(100) not null,
    ngay_sinh date
);

CREATE TABLE if not EXISTS dao_dien (
    id int AUTO_INCREMENT PRIMARY KEY not null,
    ho_ten varchar(100) not null,
    ngay_sinh date
);

create table if not EXISTS phim(
    id int AUTO_INCREMENT PRIMARY KEY not null,
    ten_phim varchar(255) not null,
    quoc_gia varchar(100),
    dao_dien_id int not null,
    nam datetime,
	do_tuoi int,
	mo_ta varchar(255)
);

CREATE TABLE if not EXISTS phim_the_loai (
    id int AUTO_INCREMENT PRIMARY key not null,
    phim_id int not null,
    the_loai_id int not null
);

CREATE TABLE if not EXISTS phim_dien_vien (
    id int AUTO_INCREMENT PRIMARY KEY not null,
    phim_id int not null,
    dien_vien_id int not null
);

INSERT INTO `the_loai`( `ten_the_loai`) VALUES ('hài hước');
INSERT INTO `the_loai`( `ten_the_loai`) VALUES ('hành động');
INSERT INTO `the_loai`( `ten_the_loai`) VALUES ('học đường');
INSERT INTO `the_loai`( `ten_the_loai`) VALUES ('viễn tưởng');

DELETE FROM `the_loai` WHERE id = 3;

INSERT INTO `dien_vien`(`ho_ten`, `ngay_sinh`) VALUES ('Nguyễn Đăng Khoa','2006/10/12');
INSERT INTO `dien_vien`(`ho_ten`, `ngay_sinh`) VALUES ('Nguyễn Minh Hiếu','2006/04/17');
INSERT INTO `dien_vien`(`ho_ten`, `ngay_sinh`) VALUES ('Nguyễn Quốc Trung','2006/11/20');
INSERT INTO `dien_vien`(`ho_ten`, `ngay_sinh`) VALUES ('Nguyễn Thị Nhung','2006/07/27');

INSERT INTO `dao_dien`(`id`, `ho_ten`, `ngay_sinh`) VALUES ('1',' Huỳnh Trấn Thành','1987/2/5');
INSERT INTO `dao_dien`(`id`, `ho_ten`, `ngay_sinh`) VALUES ('2','Christopher Nolan','1970/11/06');
INSERT INTO `dao_dien`(`id`, `ho_ten`, `ngay_sinh`) VALUES ('3','James Cameron','1954/08/12');
INSERT INTO `dao_dien`(`id`, `ho_ten`, `ngay_sinh`) VALUES ('4','Martin Scorsese','1942/03/29');
INSERT INTO `dao_dien`(`id`, `ho_ten`, `ngay_sinh`) VALUES ('5','Francis Ford Coppola','1939/07/07');

INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `ho_ten`, `ngay_sinh`, `so_dien_thoai`, `gioi_tinh`) VALUES ('khoakhoekhoan29','123456789','khoa@gmail.com','Nguyễn Đăng Khoa','2006/10/20','12345678','1');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `ho_ten`, `ngay_sinh`, `so_dien_thoai`, `gioi_tinh`) VALUES ('hieuggay1','123456789','hieu@gmail.com','Nguyễn Minh Hiếu','2006/04/17','123456789','1');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `ho_ten`, `ngay_sinh`, `so_dien_thoai`, `gioi_tinh`) VALUES ('trungdeprtrai19','23456789','trung@gmail.com','Nguyễn Quốc Trung','2006/11/20','12345678','1');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `ho_ten`, `ngay_sinh`, `so_dien_thoai`, `gioi_tinh`) VALUES ('nhungnhinhanh17','123456789','nhung@gmail.com','Nguyễn Thị Nhung','2006/07/27','123456789','0');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `ho_ten`, `ngay_sinh`, `so_dien_thoai`, `gioi_tinh`) VALUES ('nhinhinho18','123456789','nhi@gmail.com','Trần Thị Yến Nhi','2006/06/23','12345678','0');

INSERT INTO phim( ten_phim, quoc_gia, dao_dien_id, nam, do_tuoi, mo_ta) VALUES ('Oppenheimer','Mỹ','2','2006/09/11','18','phim rất hay');
INSERT INTO phim(ten_phim, quoc_gia, dao_dien_id, nam, do_tuoi, mo_ta) VALUES ('Hố đen tử thần','Việt Nam','2','2016/09/11','16','phim rất hay');
INSERT INTO phim(ten_phim, quoc_gia, dao_dien_id, nam, do_tuoi, mo_ta) VALUES ('Titanic','Mỹ','3','2006/09/11','16','phim rất hay');
INSERT INTO phim(ten_phim, quoc_gia, dao_dien_id, nam, do_tuoi, mo_ta) VALUES ('Người đàm phán','Mỹ','4','2000/09/11','18','phim rất hay');
INSERT INTO phim(ten_phim, quoc_gia, dao_dien_id, nam, do_tuoi, mo_ta) VALUES ('Sói già phố Wall','Việt Nam','5','2009/09/11','16','phim rất hay');

SELECT p.ten_phim, dd.ho_ten as 'dao_dien', tl.ten_the_loai FROM 'phim' p 
JOIN 'dao_dien' dd
on p.dao_dien_id = dd.id
JOIN 'phim_the_loai' ptl
on p.id = ptl.phim_id
JOIN the_loai tl
on tl.id =ptl.the_loai_id
WHERE p.id = 1;