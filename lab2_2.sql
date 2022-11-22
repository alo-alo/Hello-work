DECLARE @NVcoluongtentb table(
	TenPhongBan nvarchar(40),
	SoLuongNv int 
)
DECLARE @LUONGtb float;
select @LUONGtb = AVG (LUONG) FROM NHANVIEN WHERE PHG = 5;
INSERT INTO @NVcoluongtentb 
select CONCAT_WS (' ',HONV,TENLOT,TENNV),LUONG FROM NHANVIEN
WHERE LUONG > @LUONGtb;
SELECT * FROM @NVcoluongtentb ;