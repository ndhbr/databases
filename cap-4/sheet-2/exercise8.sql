-- 8
SELECT NAME, GEBDATUM, GEHALT
FROM PERSONAL
WHERE PERSNR IN (SELECT PERSNR FROM AUFTRAG)