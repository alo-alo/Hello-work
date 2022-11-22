--Dữ liệu cột HONV được viết in hoa toàn bộ
--Dữ liệu cột TENLOT được viết chữ thường toàn bộ
select 
	UPPER ( HONV),
	LOWER ( TENLOT), tennv,
	LOWER (left(TENNV,1))+ upper(SUBSTRING(TENNV,2,1))+lower(SUBSTRING(TENNV, 3, LEN(tennv))),
	dchi,
	CHARINDEX (' ',DCHI),
	CHARINDEX (' ', dchi ),
	SUBSTRING(dchi,CHARINDEX(' ',DCHI )+1, CHARINDEX(',',dchi)-CHARINDEX(' ',DCHI) -1)
	from NHANVIEN 
