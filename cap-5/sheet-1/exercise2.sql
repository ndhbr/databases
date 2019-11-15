-- 2
DROP TABLE Rechnung;

CREATE TABLE Rechnung (
    Rechnr          INTEGER         CONSTRAINT PK_Rechnung PRIMARY KEY,
    Datum           DATE,
    Kundnr          INTEGER         CONSTRAINT FK_Rechnung_Kunde REFERENCES Kunde ON DELETE CASCADE,
    Gesamtbetrag    NUMERIC(7,2),
    Bezahltdatum    DATE            DEFAULT NULL,
    Mahnung         VARCHAR2(1)     CHECK (Mahnung IN ('J', 'N')),
    
    CONSTRAINT FK_Rechnung_Auftrag FOREIGN KEY (Rechnr) REFERENCES Auftrag (Auftrnr)
);

INSERT INTO Rechnung (Rechnr, Datum, Kundnr, Gesamtbetrag, Bezahltdatum, Mahnung)
SELECT A.Auftrnr, A.Datum, A.Kundnr, SUM(AP.Gesamtpreis), NULL, 'N'
FROM Auftrag A
JOIN Auftragsposten AP ON A.Auftrnr = AP.Auftrnr
GROUP BY A.Auftrnr, A.Datum, A.Kundnr, NULL, 'N';

COMMIT;