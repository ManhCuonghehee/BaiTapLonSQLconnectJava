--Tao login 
create login login_QLKHTT with password = '123456';
create login login_GiangVien with password = '123456';
create login login_HocVien with password = '123456';

--Tao user
create user user_QLKHTT for login login_QLKHTT;
create user user_GiangVien for login login_GiangVien;
create user user_HocVien for login login_HocVien;

--Tao Role
create role role_GiangVien;
create role role_HocVien;
create role role_QLKHTT; 

--Them User vao role
alter role role_GiangVien add member user_GiangVien;
alter role role_HocVien add member user_HocVien;



--Phan quyen cho role GiangVien
grant select, insert, update, delete on BAIGIANG to role_GiangVien; 

--Thu hoi quyen cua role 
revoke delete on BAIGIANG from role_GiangVien;
