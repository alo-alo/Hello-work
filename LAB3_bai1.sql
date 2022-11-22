--Xuất định dạng “tổng số giờ làm việc” kiểu decimal với 2 số thập phân.
SELECT TENDEAN ,cast(sum(thoigian) as   decimal(5,2)) as 'tong so gio lam viec  ' from CONGVIEC
inner join DEAN on CONGVIEC.MADA=DEAN.MADA 
inner join PHANCONG on CONGVIEC.MADA=PHANCONG.MADA 
group by TENDEAN

SELECT TENDEAN ,convert (decimal(5,2),sum (thoigian)) as 'tong so gio lam viec  ' from CONGVIEC
inner join DEAN on CONGVIEC.MADA=DEAN.MADA 
inner join PHANCONG on CONGVIEC.MADA=PHANCONG.MADA 
group by TENDEAN
-- Xuất định dạng “tổng số giờ làm việc” kiểu varchar
SELECT TENDEAN ,cast(sum(thoigian) as   varchar(15 )) as 'tong so gio lam viec  ' from CONGVIEC
inner join DEAN on CONGVIEC.MADA=DEAN.MADA 
inner join PHANCONG on CONGVIEC.MADA=PHANCONG.MADA 
group by TENDEAN

SELECT TENDEAN ,convert (varchar(15),sum (thoigian)) as 'tong so gio lam viec  ' from CONGVIEC
inner join DEAN on CONGVIEC.MADA=DEAN.MADA 
inner join PHANCONG on CONGVIEC.MADA=PHANCONG.MADA 
group by TENDEAN
--Xuất định dạng “luong trung bình” kiểu decimal với 2 số thập phân, sử dụng dấu
phẩy để phân biệt phần nguyên và phần thập phân.
select PHG, convert (decimal (15,2), AVG(LUONG),1) 
from NHANVIEN 
group by PHG;

select PHG,FORMAT( convert (decimal (15,2), AVG(LUONG),1) ,'N','vi-VN') 
from NHANVIEN 
group by PHG;

--Xuất định dạng “luong trung bình” kiểu varchar. Sử dụng dấu phẩy tách cứ mỗi 3
--chữ số trong chuỗi ra, gợi ý dùng thêm các hàm Left, Replace
select PHG, convert (varchar(50 ),cast ( AVG(LUONG) as money),1) 
from NHANVIEN 
group by PHG;