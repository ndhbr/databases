-- 3
ALTER TABLE Auftragsposten
ADD Einzelpreis NUMERIC(7,2);

UPDATE Auftragsposten
SET Einzelpreis = (Gesamtpreis / Anzahl);