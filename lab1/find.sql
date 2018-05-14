-- (1
-- select FNAME, TNAME, YEARS, MONTHS
-- from FILM, SHOWING, THEATER
-- where FILM.FID = SHOWING.FID and SHOWING.TID = THEATER.TID
-- 	and FNAME = '战狼'
-- order by MONTHS DESC;

-- (2 
select FNAME, FILM.FID, FTYPE, DNAME, length, IS3D, FILM.GRADE
from FILM left join ACTIN on FILM.FID = ACTIN.FID
where ACTIN.FID is null;

