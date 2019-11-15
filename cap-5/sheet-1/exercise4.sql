-- 4
ALTER TABLE Personal
ADD CONSTRAINT PERS_CHECKS CHECK (
    (GEBDATUM >= 1940 AND GEBDATUM <= 1998) AND
    (STAND='led' OR STAND='verh' OR STAND='ges') AND
    (GEHALT >= 500 AND GEHALT <= 6000) AND
    (BEURTEILUNG IS NULL OR (BEURTEILUNG >= 1 AND BEURTEILUNG <= 10)
)