--	Tối ưu hóa chỉ mục
--1. Sử dụng chỉ mục kết hợp 
create index IX_HOCVIEN_Ten_Email on HOCVIEN (TenHocVien, Email);
--2. Chỉ mục duy nhất cho cột cần ràng buộc uniqueness 
create unique index UQ_HOCVIEN_Email on HOCVIEN (Email);
--3. Chỉ mục bao phủ 
-- Bao gồm cả các cột thường SELECT nhưng không dùng để tìm kiếm
create index IX_HOCVIEN_SDT_Cover 
on HOCVIEN (SDT) 
include (TenHocVien, Email);


--Tối ưu truy vấn 
--1. Chỉ cần những cột slect cần thiết 
select MaHocVien, TenHocVien from HOCVIEN 
--2. Tối ưu join 
SELECT HV.MaHocVien, HV.TenHocVien, DK.MaKhoaHoc
FROM HOCVIEN HV
JOIN DKKH DK ON HV.MaHocVien = DK.MaHocVien
WHERE HV.TenHocVien LIKE 'Nguyen%';
--3. Sử dụng EXISTS thay vì COUNT
if exists (select 1 from HOCVIEN where Email ='a@gmail.com' )
