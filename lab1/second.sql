 -- 分隔符
DELIMITER $$
CREATE TRIGGER ZXC_XJ 
	  before INSERT ON `FILM`
	  FOR EACH ROW 
      BEGIN
      if(NEW.DNAME = '周星驰')
      then set NEW.FTYPE = '喜剧片';
      end if;
      
      end$$
      
      
-- 	  UPDATE `FILM` SET `FTYPE` = '喜剧片' 
-- show triggers;
-- drop trigger ZXC_XJ;
-- 
