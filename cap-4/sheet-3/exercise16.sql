-- 16
SELECT ARTNR, COUNT(*)
FROM TEILESTRUKTUR
GROUP BY ARTNR
HAVING COUNT(*) > 3
