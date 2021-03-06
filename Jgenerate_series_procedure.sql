DELIMITER //
CREATE PROCEDURE Jgenerate_series (IN max INT)

BEGIN
  DECLARE i INT;
  SET i = 0;
  DROP TABLE IF EXISTS Jgenerate_series_DB.Jgenerate_series_tbl;
  CREATE TABLE Jgenerate_series_DB.Jgenerate_series_tbl (id BIGINT, date DATE, rnd_num BIGINT,rnd_float DOUBLE, rnd_str VARCHAR(255));
  WHILE i < max DO
    INSERT INTO Jgenerate_series_DB.Jgenerate_series_tbl VALUES (i, (CURDATE() - INTERVAL (FLOOR(RAND()*(100000-5+1)+5)) DAY), RAND() * max, RAND() * 10, md5(i));
    SET i = i + 1;
  END WHILE;
END

//
DELIMITER ;
