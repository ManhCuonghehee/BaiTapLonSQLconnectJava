use master 
go
backup database QLKHTT to disk = 'C:/backup/QLKHTT.bak';
go
restore database QLKHTT from disk = 'C:/backup/QLKHTT.bak';
go
--Sao luu tu dong
create procedure sp_backup_QLKHTT
as
begin
	declare @backup varchar(100) = 'C:/backup/';
	declare @filename varchar(100);
	declare @date varchar(10) = convert(varchar(10), getdate(), 'ddMMyyyy')

	set @filename = @backup + 'QLKHTT_Full' + @date + '.bak';

	backup database QLKHTT to disk = @filename 
	with fomat,init;
end;