use QLKHTT
go
-- tạo chỉ mục nonclustered chỉ đến MaHocVien trong bảng HOCVIEN
create nonclustered index IX_HocVien_MaHocVien
on HOCVIEN(MaHocVien)
go

-- tạo view danh sách học viên đăng ký khóa học
create view vw_HocVien_DangKy as
select
	hv.MaHocVien,
	hv.TenHocVien,
	kh.TenKhoaHoc,
	dk.NgayDangKy
from DKKH dk
join HOCVIEN hv on dk.MaHocVien = hv.MaHocVien
join KHOAHOC kh on dk.MaKhoaHoc = kh.MaKhoaHoc
go
-- tạo thủ tục (stored procedures)
create procedure Them_Hoc_Vien
    @Ma_Hoc_Vien int,
    @Ten_Hoc_Vien nvarchar(100),
    @Email varchar(100),
    @SDT varchar(10)
as
begin
    insert into HOCVIEN (MaHocVien, TenHocVien, Email, SDT)
    values (@Ma_Hoc_Vien, @Ten_Hoc_Vien, @Email, @SDT);
end;
go

EXEC Them_Hoc_Vien 
    @Ma_Hoc_Vien = 6, 
    @Ten_Hoc_Vien = N'Nguyễn Văn F', 
    @Email = 'f@gmail.com', 
    @SDT = '0123456789';
go

-- tạo hàm người dùng định nghĩa để đếm khóa học đã đăng ký
create function Dem_Khoa_Hoc_Da_Dang_Ky (@Ma_Hoc_Vien int)
returns int
as
begin
    declare @So_Luong int;

    select @So_Luong = count(*)
    from DKKH
    where MaHocVien = @Ma_Hoc_Vien;

    return @So_Luong;
end;
go

select dbo.dem_khoa_hoc_da_dang_ky(1) as so_khoa_da_dang_ky;
go
-- tạo trigger để tự động ghi log mỗi khi có học viên đăng ký khóa học mới
create table Log_Dang_Ky (
    ID int identity(1,1) primary key,
    Ma_Hoc_Vien int,
    Ma_Khoa_Hoc int,
    Ngay_Dang_Ky datetime default getdate(),
    Ghi_Chu nvarchar(200)
);
go

create trigger trgg_Log_Dang_Ky
on DKKH
after insert
as
begin
    insert into Log_Dang_Ky (Ma_Hoc_Vien, Ma_Khoa_Hoc, Ghi_Chu)
    select MaHocVien, MaDangKy, N'Học viên đăng ký khóa học mới'
    from inserted;
end;
insert into dkkh (MaDangKy, MaHocVien, MaKhoaHoc, NgayDangKy)
values (7, 6, 1, '2025-11-18');
select * from Log_Dang_Ky;