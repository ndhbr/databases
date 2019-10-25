-- 13
-- Mit Kreuzprodukt
SELECT A.AUFTRNR, A.DATUM, K.NAME AS KUNDNAME, P.NAME AS PERSNAME
FROM AUFTRAG A, PERSONAL P, KUNDE K
WHERE A.PERSNR = P.PERSNR AND A.KUNDNR = K.NR;

-- Mit Join
SELECT A.AUFTRNR, A.DATUM, K.NAME AS KUNDNAME, P.NAME AS PERSNAME
FROM AUFTRAG A
JOIN PERSONAL P ON A.PERSNR = P.PERSNR
JOIN KUNDE K ON A.KUNDNR = K.NR;