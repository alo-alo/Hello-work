
--Cho biết các nhân viên có năm sinh trong khoảng 1960 đến 1965.
 --Cho biết tuổi của các nhân viên tính đến thời điểm hiện tại.
 --Dựa vào dữ liệu NGSINH, cho biết nhân viên sinh vào thứ mấy.
select* from NHANVIEN ;
select*from NHANVIEN 
WHERE DATENAME (year,ngsinh) >= 1960 and DATENAME(year,ngsinh)<= 1965

select a.*, DATEDIFF (year,ngsinh,getdate()) as Age from NHANVIEN a;
select a.*, DATENAME (week,ngsinh) from NHANVIEN a;


--Cho biết số lượng nhân viên, tên trưởng phòng, ngày nhận chức trưởng phòng và ngày
--nhận chức trưởng phòng hiển thi theo định dạng dd-mm-yy (ví dụ 25-04-2019)
select TENPHG, TRPHG,B.TENNV, NG_NHANCHUC, COUNT(A.MaNV) as ' SoLuongNV'
	from NHANVIEN A
inner join PHONGBAN on PHONGBAN.MAPHG  = A.PHG 
inner join NHANVIEN B on B.MANV  = PHONGBAN.TRPHG 
group by TENPHG, TRPHG, NG_NHANCHUC , B.TENNV 
