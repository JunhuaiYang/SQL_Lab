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
-- where ACTIN.FID is null
-- order by DNAME ASC, GRADE DESC;
-- 
-- (3
-- distinct 为去重关键字
-- select distinct FILM.FID, FNAME, DNAME
-- from FILM, SHOWING
-- where FILM.FID = SHOWING.FID and YEARS < 2017;

-- （4 ok
--  having 也可以用子查询
-- select distinct SHOWING.FID
-- from THEATER, FILM, SHOWING
-- where FILM.FID = SHOWING.FID and THEATER.TID = SHOWING.TID
-- group by SHOWING.FID
-- having count(1) = (select count(*) from THEATER);



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
-- select distinct FNAME, temp.YEARS, temp.MONTHS
-- from FILM, SHOWING temp
-- where FILM.FID = temp.FID 
-- and not exists 
-- 	(select * from SHOWING where FID = temp.FID and (YEARS < temp.YEARS or MONTHS < temp.MONTHS))
-- and GRADE>=90;


-- (12
-- 相关子查询实现
-- 1 xx
-- select FNAME, temp.YEARS, temp.MONTHS, temp.TID
-- from FILM, SHOWING temp
-- where FILM.FID = temp.FID 
-- and temp.MONTHS = (select min(MONTHS) from SHOWING where FID = temp.FID)
-- and GRADE>=90;

-- 2
-- 相关子查询实现
-- 取两个的or 刚好能对？
-- select FNAME, temp.YEARS, temp.MONTHS, temp.TID
-- from FILM, SHOWING temp
-- where FILM.FID = temp.FID 
-- and not exists 
-- 	(select * from SHOWING where FID = temp.FID and (YEARS < temp.YEARS or MONTHS < temp.MONTHS))
-- and GRADE>=90;


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

-- (16  
--  用子查询里操作
-- select TID, YEARS, MONTHS, FID
-- from SHOWING
-- where (FID = 1 or FID = 2) and (YEARS, MONTHS,FID) in
-- 	(select YEARS,MONTHS,FID from SHOWING group by 
--     YEARS,MONTHS,FID having count(1)>1);


-- (17
-- 两层连接查询
-- select ACTOR.ACTID, ANAME, FILM.GRADE, FILM.FID
-- from ACTOR, ACTIN, FILM
-- where ACTOR.ACTID = ACTIN.ACTID and FILM.FID = ACTIN.FID
-- and ACTIN.ACTID not in
-- 	(select ACTID from FILM, ACTIN
--     where FILM.GRADE< 85 and FILM.FID = ACTIN.FID);

-- (18
-- select ANAME, FNAME
-- from ACTOR, ACTIN, FILM
-- where ACTOR.ACTID = ACTIN.ACTID and FILM.FID = ACTIN.FID
-- and ACTIN.FID in 
-- 	(select FID from FILM
--     where DNAME = '吴宇森');
    
-- (19 
-- select distinct ACTOR.ACTID, ANAME, FNAME
-- from ACTIN right join ACTOR on ACTOR.ACTID = ACTIN.ACTID
-- 	left join FILM on FILM.FID = ACTIN.FID;


-- (20
-- select FILM.FID, FNAME
-- from FILM, SHOWING
-- where FILM.FID = SHOWING.FID and FILM.GRADE is null
-- group by SHOWING.FID
-- having count(1) > 3;

