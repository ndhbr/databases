-- 6
DROP VIEW VStruktur;

CREATE VIEW VStruktur AS
SELECT AT.BEZEICHNUNG AS ART_BEZEICHNUNG, AT2.BEZEICHNUNG AS EINZELTEIL_BEZEICHNUNG, T.ANZAHL, T.EINHEIT
FROM TEILESTRUKTUR T, ARTIKEL AT, ARTIKEL AT2
WHERE AT.ANR = T.ARTNR 
    AND AT2.ANR = T.EINZELTEILNR;

SELECT *
FROM VStruktur;