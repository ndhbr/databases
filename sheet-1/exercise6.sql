SELECT 'Unterschiedliche Beurteilungen: ' || COUNT(DISTINCT Beurteilung) AS AlleBeurteilungen,
    'Unterschiedliche Aufgaben: ' || COUNT(DISTINCT Aufgabe) AS AlleAufgaben
FROM Personal