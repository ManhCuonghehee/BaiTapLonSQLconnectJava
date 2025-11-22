-- Tạo schema mới
CREATE SCHEMA security AUTHORIZATION dbo;
go
-- Di chuyển bảng log sang schema security
ALTER SCHEMA security TRANSFER dbo.Log_Dang_Ky;
go

-- Tạo view bảo mật
CREATE VIEW security.vw_HocVien_AnDanh AS
SELECT 
    MaHocVien,
    LEFT(TenHocVien, 1) + '***' AS TenAnDanh,
    Email,
    SDT
FROM HOCVIEN;
go 

-- Phân quyền cho view an danh
GRANT SELECT ON security.vw_HocVien_AnDanh TO role_HocVien;