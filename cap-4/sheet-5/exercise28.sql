-- 28
UPDATE
    PERSONAL
SET 
    GEHALT = GEHALT * 1.02
WHERE
    PERSNR IN (
        SELECT
            PERSNR
        FROM
            AUFTRAG
        GROUP BY PERSNR
        HAVING 
            SUM((
                SELECT SUM(GESAMTPREIS)
                FROM
                    AUFTRAGSPOSTEN
                WHERE
                    AUFTRAGSPOSTEN.AUFTRNR = AUFTRAG.AUFTRNR
                GROUP BY AUFTRNR
            )) >= 2000
    );

ROLLBACK;