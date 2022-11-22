DECLARE @NVcoLuongCaoNhat table (
	TenNVcoLuongCaoNhat nvarchar(40),
	Luong float 
)
insert into @NVcoLuongCaoNhat 
	select CONCAT_WS (' ',HONV,TENLOT,TENNV),LUONG FROM NHANVIEN
	WHERE LUONG =(SELECT MAX(LUONG)FROM NHANVIEN)
	SELECT * FROM @NVcoLuongCaoNhat 