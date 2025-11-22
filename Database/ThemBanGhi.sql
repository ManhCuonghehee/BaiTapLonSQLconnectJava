use QLKHTT
go
-- insert dữ liệu vào bản ghi của bảng HOCVIEN
insert into HOCVIEN (MaHocVien, TenHocVien, Email, SDT)
values (1, N'Nguyễn Văn A', 'a@gmail.com', 01)
insert into HOCVIEN (MaHocVien, TenHocVien, Email, SDT)
values (2, N'Nguyễn Văn B', 'b@gmail.com', 02)
insert into HOCVIEN (MaHocVien, TenHocVien, Email, SDT)
values (3, N'Nguyễn Văn C', 'c@gmail.com', 03)
insert into HOCVIEN (MaHocVien, TenHocVien, Email, SDT)
values (4, N'Nguyễn Văn D', 'd@gmail.com', 04)
insert into HOCVIEN (MaHocVien, TenHocVien, Email, SDT)
values (5, N'Nguyễn Văn E', 'e@gmail.com', 05)
-- insert dữ liệu vào bản ghi của bảng GIANGVIEN
insert into GIANGVIEN (MaGiangVien, TenGiangVien, ChuyenMon, Email)
values (1, N'Ngô Bá Khá', N'Thể dục thể chất', 'Khabanh@gmail.com')
insert into GIANGVIEN (MaGiangVien, TenGiangVien, ChuyenMon, Email)
values (2, N'Nguyễn Xuân Huấn', N'Giáo Dục xã hội', 'Huanrose@gmail.com')
insert into GIANGVIEN (MaGiangVien, TenGiangVien, ChuyenMon, Email)
values (3, N'Phan Tấn Trung', N'Chiến thuật gia', 'Baroibeo@gmail.com')
insert into GIANGVIEN (MaGiangVien, TenGiangVien, ChuyenMon, Email)
values (4, N'Trương Tuấn Tú', N'Xác suất thông kê ', 'Vuacobac@gmail.com')
insert into GIANGVIEN (MaGiangVien, TenGiangVien, ChuyenMon, Email)
values (5, N'Nguyễn Phương Hằng', N'Chiêm tinh gia', 'PhuongHang@gmail.com')
-- insert dữ liệu vào bản ghi của bảng KHOAHOC
insert into KHOAHOC (MaKhoaHoc, TenKhoaHoc, Mota, MaGiangVien)
values (1, N'Luyện nhảy như khá bảnh', N'Tham gia khóa học chắc chắn bạn sẽ nhảy đẹp hơn cả thầy Khá Bảnh', 1)
insert into KHOAHOC (MaKhoaHoc, TenKhoaHoc, Mota, MaGiangVien)
values (2, N'Hiểu biết về sã hội của Huấn rô sì', N'Tham gia khóa học chắc chắn bạn sẽ biết không làm mà đòi có ăn thì chỉ có ăn ...', 2)
insert into KHOAHOC (MaKhoaHoc, TenKhoaHoc, Mota, MaGiangVien)
values (3, N'Huấn luyện giáo án Susan 0175 và tình huống di chuyển', N'Tham gia khóa học chắc chắn bạn sẽ hiểu giáo án chưa hoàn thiện của thầy giáo ba vĩ đại như nào', 3)
insert into KHOAHOC (MaKhoaHoc, TenKhoaHoc, Mota, MaGiangVien)
values (4, N'Hướng dẫn áp dụng xác xuất thông kê vào tài xỉu', N'Tham gia bạn sẽ biết tỉ lệ phần trăm ăn và rất nhiều điều thú vị khác về ứng dụng "Tài Xỉu"', 4)
insert into KHOAHOC (MaKhoaHoc, TenKhoaHoc, Mota, MaGiangVien)
values (5, N'Sử dụng giấc mơ để tìm hiểu về đối tượng', N'"Tham gia bạn sẽ bói được hoàn cảnh, tài sản, tội ác, của đối tượng" Bà Phương hằng cho biết', 5)
-- insert dữ liệu vào bản ghi của bảng BAIGIANG
insert into BAIGIANG (MaBAIGIANG, MaKhoaHoc, TieuDe, NoiDung)
values (1, 1, N'Hướng dẫn múa quạt cơ bản', N'Làm quen với những động tác cơ bản của kĩ năng múa quạt')
insert into BAIGIANG (MaBAIGIANG, MaKhoaHoc, TieuDe, NoiDung)
values (2, 2, N'Thông hiểu về triết lí có làm mới có ăn', N'Hiểu rõ về câu nói "không làm mà đòi có ăn thì chỉ có ăn đậu bưởi, ăn cơm"')
insert into BAIGIANG (MaBAIGIANG, MaKhoaHoc, TieuDe, NoiDung)
values (3, 3, N'Giới thiệu giáo án susan 0175', N'làm quen với build đồ, lên ngọc, phù hiệu của nasus')
insert into BAIGIANG (MaBAIGIANG, MaKhoaHoc, TieuDe, NoiDung)
values (4, 4, N'Những điều cần biết về xác xuất thông kê', N'Những điều cơ bản về xác xuất thống kê và giới thiệu về app "làm giàu nhanh" tài xỉu')
insert into BAIGIANG (MaBAIGIANG, MaKhoaHoc, TieuDe, NoiDung)
values (5, 5, N'Làm sao để tiên tri được đối tượng', N'Giới thiệu những phương thức cơ bản để tiên tri về đối tượng')
-- insert dữ liệu vào bản ghi của bảng DKKH
insert into DKKH (MaDangKy, MaHocVien, MaKhoaHoc, NgayDangKy)
values (1, 1, 1, '2020-01-30')
insert into DKKH (MaDangKy, MaHocVien, MaKhoaHoc, NgayDangKy)
values (2, 2, 2, '2021-04-25')
insert into DKKH (MaDangKy, MaHocVien, MaKhoaHoc, NgayDangKy)
values (3, 3, 3, '2022-02-16')
insert into DKKH (MaDangKy, MaHocVien, MaKhoaHoc, NgayDangKy)
values (4, 4, 4, '2023-09-24')
insert into DKKH (MaDangKy, MaHocVien, MaKhoaHoc, NgayDangKy)
values (5, 5, 5, '2024-06-09')
select * from HOCVIEN
select * from GIANGVIEN
select * from KHOAHOC
select * from BAIGIANG
select * from DKKH