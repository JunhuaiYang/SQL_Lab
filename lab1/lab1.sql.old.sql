-- -- 1.
-- ALTER TABLE course MODIFY cname VARCHAR(40);

-- -- 2.
-- ALTER TABLE student ADD COLUMN birthday DATETIME;


-- -- 3.
-- ALTER TABLE sc ADD CHECK(grade>= 0 AND grade <= 150);


-- -- 4.
-- ALTER TABLE student MODIFY ssex char(6);
-- ALTER TABLE student ALTER COLUMN ssex SET default 'man';

-- -- 5.
-- ALTER TABLE student ADD CHECK (sdept IN ('计算机', '数学', '信息'));

