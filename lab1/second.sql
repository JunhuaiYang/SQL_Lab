-- DELIMITER $$ 
-- CREATE TRIGGER ZXC_XJ 
-- 	  AFTER INSERT ON `FILM`
-- 	  FOR EACH ROW BEGIN
--       if(NEW.`DNAME` = '周星驰')
--       then UPDATE `FILM` SET `FTYPE` = '喜剧片';
--       end if;
-- -- 	  UPDATE `FILM` SET `FTYPE` = '喜剧片' 
-- -- 	  WHERE NEW.`DNAME` = '周星驰';	
--       end;

-- show triggers;
drop trigger ZXC_XJ;
-- 
