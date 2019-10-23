SELECT name, aufgabe, gehalt
FROM Personal
WHERE gehalt IN (SELECT MAX(gehalt) FROM Personal);

SELECT name, aufgabe, gehalt
FROM Personal
WHERE gehalt IN (SELECT MIN(gehalt) FROM Personal);