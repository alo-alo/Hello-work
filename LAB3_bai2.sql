--Xuất định dạng “tổng số giờ làm việc” với hàm CEILING
select TENDEAN ,ceiling(cast(sum(ThoiGian) as decimal(5,2))) as 'tong so gionlam viec' from CONGVIEC
inner join DEAN on CONGVIEC.MADA=DEAN.MADA
inner join PHANCONG on CONGVIEC.MADA=PHANCONG.MADA
group by TENDEAN  
--Xuất định dạng “tổng số giờ làm việc” với hàm FLOOR
select TENDEAN ,floor(cast(sum(ThoiGian) as decimal(5,2))) as 'tong so gionlam viec' from CONGVIEC
inner join DEAN on CONGVIEC.MADA=DEAN.MADA
inner join PHANCONG on CONGVIEC.MADA=PHANCONG.MADA
group by TENDEAN 
--Xuất định dạng “tổng số giờ làm việc” làm tròn tới 2 chữ số thập phân
select HONV +' '+TENLOT+' '+ TENNV,LUONG from NHANVIEN
where luong>(select round( avg(luong),2) from NHANVIEN where phg=(select maphg from PHONGBAN where TENPHG= N'Nghiên Cứu'))

select * from PHANCONG