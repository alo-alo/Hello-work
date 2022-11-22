select TENPHG ,count (*)
from PHONGBAN,DEAN
where maphg=phong
group by TENPHG

select*
from DEAN 