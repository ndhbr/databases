-- 8
DROP TRIGGER Preis;

CREATE TRIGGER Preis
BEFORE INSERT OR UPDATE
ON Artikel
REFERENCING NEW AS neu
FOR EACH ROW
BEGIN
    :neu.Preis := :neu.Netto * 1.19;
    :neu.Steuer := (:neu.Netto * 1.19) - :neu.Netto;
END;

/

UPDATE ARTIKEL
SET Netto=500
WHERE Anr=100001;