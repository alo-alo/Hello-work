select TENPHG,COUNT  (*) as ' số lượng nhân viên làm việc '
from PHONGBAN,NHANVIEN
where MAPHG = PHG
group by TENPHG
having avg(LUONG)>30000