-- 7
DROP VIEW VPersonal;

CREATE VIEW VPersonal
AS SELECT *
FROM PERSONAL
WITH CHECK OPTION;

SELECT *
FROM VPersonal;