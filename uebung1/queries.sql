
-- Anfrage mit Aggregation:
-- Berechnung der Gesamtzahl der Seiten aller Bücher
-- im Bestand; für jedes einzelne Exemplar
SELECT SUM(V.seiten)
FROM (SELECT SUM(B.seitenanzahl) * B.exemplare as seiten
FROM t_gr01_buecher B
GROUP BY B.exemplare) V;

-- Anzahl aller Exemplare
SELECT SUM(B.exemplare)
FROM t_gr01_buecher B;


-- Anfrage mit Referenzierung (relational):
-- Zuordnung von Büchern zu ihren Autoren
SELECT au.name, au.vorname, b.*
FROM t_gr01_autorinnen au, TABLE(au.voe) v
JOIN t_gr01_buecher b ON b.isbn = v.isbn;

