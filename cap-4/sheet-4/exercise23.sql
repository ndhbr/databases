-- 23
ACCEPT ANZAHL NUMBER PROMPT 'Bitte Anzahl der Meistverdienenden angeben:'
SELECT *
FROM (
    SELECT NAME, RANK() OVER (ORDER BY GEHALT DESC) ranking
    FROM PERSONAL
)
WHERE ranking <= &ANZAHL