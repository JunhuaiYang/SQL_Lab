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

-- （8
-- select DNAME, count(1) NUM_FILM, avg(GRADE) AVG_GRADE
-- from FILM
-- group by DNAME
-- having count(1) >= 2;

-- (9
-- 要用子查询才行
-- select distinct DNAME, ACTIN.ACTID, ANAME
-- from FILM, ACTIN, ACTOR
-- where FILM.FID = ACTIN.FID and ACTOR.ACTID = ACTIN.ACTID
-- 	and DNAME in
-- 		(select DNAME from FILM
--         group by DNAME
--         having count(1) >= 2);
        
-- (10
-- select ANAME, avg(GRADE)
-- from ACTIN, ACTOR
-- where ACTIN.ACTID = ACTOR.ACTID
-- group by ACTIN.ACTID;

-- (11
-- select FNAME,YEARS EARLY_YEARS,MONTHS EARLY_MONTHS
-- from FILM, SHOWING
-- where FILM.FID = SHOWING.FID 
-- order by YEARS ASC, MONTHS ASC;


-- (12



-- (13
-- select FNAME, count(1) NUM_COUNT
-- from FILM, SHOWING
-- where FILM.FID = SHOWING.FID
-- group by SHOWING.FID;

-- (14
-- select distinct DNAME
-- from FILM
-- where FTYPE = '动作片' or FTYPE = '警匪片' or FTYPE = '枪战片';

-- (15
-- select FILM.FID, FNAME, TNAME, YEARS, MONTHS
-- from FILM, THEATER, SHOWING
-- where FILM.FID = SHOWING.FID and SHOWING.TID = THEATER.TID
-- and FNAME like '战狼%'
-- order by FNAME;

-- (16  xx
-- select TID, MONTHS, fid
-- from SHOWING
-- where (FID = 1 or FID = 2);

-- (17
-- 两层连接查询
select ACTOR.ACTID, ANAME, FILM.GRADE, FILM.FID
from ACTOR, ACTIN, FILM
where ACTOR.ACTID = ACTIN.ACTID and FILM.FID = ACTIN.FID
and ACTIN.ACTID not in
	(select ACTID from FILM, ACTIN
    where FILM.GRADE< 85 and FILM.FID = ACTIN.FID);

-- (18


-- (19


-- (20