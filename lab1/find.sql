-- (1
-- select FNAME, TNAME, YEARS, MONTHS
-- from FILM, SHOWING, THEATER
-- where FILM.FID = SHOWING.FID and SHOWING.TID = THEATER.TID
-- 	and FNAME = '战狼'
-- order by MONTHS DESC;

-- (2 
-- 需要用到左连接
-- select FNAME, FILM.FID, FTYPE, DNAME, length, IS3D, FILM.GRADE
-- from FILM left join ACTIN on FILM.FID = ACTIN.FID
-- where ACTIN.FID is null;

-- (3
-- distinct 为去重关键字
-- select distinct FILM.FID, FNAME, DNAME
-- from FILM, SHOWING
-- where FILM.FID = SHOWING.FID and YEARS < 2017;

-- （4 distinct
-- select distinct FID , SHOWING.TID, THEATER.TID
-- from  THEATER left join SHOWING on THEATER.TID = SHOWING.TID
-- where SHOWING.TID is null;
-- right join FILM on FILM.FID = SHOWING.FID;


--  (5
-- 用 not between 
-- select FID, FNAME, DNAME, GRADE
-- from FILM
-- where GRADE not between 80 and 89;

-- （6
-- select DNAME, max(GRADE) MAX_GRADE, min(GRADE) MIN_GRADE
-- from FILM
-- group by DNAME;

-- (7 
-- 使用having
-- select DNAME, count(1) NUM_FILM
-- from FILM
-- group by DNAME
-- having count(1) >= 2;



 
