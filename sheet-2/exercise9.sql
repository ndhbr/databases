-- 9
SELECT NAME, GEHALT
FROM PERSONAL
WHERE GEHALT = (SELECT MAX(GEHALT) FROM PERSONAL) OR
    GEHALT = (SELECT MIN(GEHALT) FROM PERSONAL)