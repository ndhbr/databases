-- 14
-- Kreuzprodukt
SELECT AT.BEZEICHNUNG, AT2.BEZEICHNUNG, T.ANZAHL, T.EINHEIT
FROM TEILESTRUKTUR T, ARTIKEL AT, ARTIKEL AT2
WHERE AT.ANR = T.ARTNR 
    AND AT2.ANR = T.EINZELTEILNR;
    
-- Join
SELECT AT.BEZEICHNUNG, AT2.BEZEICHNUNG, T.ANZAHL, T.EINHEIT
FROM TEILESTRUKTUR T
JOIN ARTIKEL AT ON T.ARTNR = AT.ANR
JOIN ARTIKEL AT2 ON T.EINZELTEILNR = AT2.ANR;