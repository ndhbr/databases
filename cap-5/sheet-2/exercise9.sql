-- 9
DROP SEQUENCE Personalnummer;
DROP TRIGGER Personalnummer_Trigger;

CREATE SEQUENCE Personalnummer
START WITH 101;

CREATE TRIGGER Personalnummer_Trigger
BEFORE INSERT
ON Personal
REFERENCING NEW AS neu
FOR EACH ROW
BEGIN
    :neu.Persnr := Personalnummer.NEXTVAL;
END;
/