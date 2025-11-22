use master
go
-- Kiểm tra trước khi tạo
if not exists (select name from sys.databases where name = 'QLKHTT')
create database QLKHTT
go
use QLKHTT
go
if object_id('HOCVIEN', 'U') IS NULL
	create table HOCVIEN (
		MaHocVien int primary key,
		TenHocVien nvarchar(100) null,
		Email varchar(100) null,
		SDT int null
	);
if object_id('GIANGVIEN', 'U') IS NULL
	create table GIANGVIEN (
		MaGiangVien int primary key,
		TenGiangVien nvarchar(100) null,
		ChuyenMon nvarchar(100) null,
		Email varchar(100) null
	);
if object_id('KHOAHOC', 'U') IS NULL
	create table KHOAHOC (
		MaKhoaHoc int primary key,
		TenKhoaHoc nvarchar(100) null,
		Mota nvarchar(200) null,
		MaGiangVien int,
		foreign key (MaGiangVien) references GIANGVIEN(MaGiangVien)
	);
if object_id('BAIGIANG', 'U') IS NULL
	create table BAIGIANG (
		MaBaiGiang int primary key,
		MaKhoaHoc int,
		TieuDe nvarchar(100) null,
		NoiDung nvarchar(100) null,
		foreign key (MaKhoaHoc) references KHOAHOC(MaKhoaHoc)
	);
if object_id('DKKH', 'U') IS NULL
	create table DKKH (
		MaDangKy int primary key,
		MaHocVien int,
		MaKhoaHoc int,
		NgayDangKy date null,
		foreign key (MaKhoaHoc) references KHOAHOC(MaKhoaHoc),
		foreign key (MaHocVien) references HOCVIEN(MaHocVien)
	);
