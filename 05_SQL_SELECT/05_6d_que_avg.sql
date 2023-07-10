/* Aggregationen AVG() */

-- Durchschnittspreis einer Aktie / Banken?
/*
SELECT
    #ROUND(AVG(price),2) Durchschnittspreis
    AVG(price) Durchschnittspreis
FROM stocks.ccc
WHERE industry = "Banks"
#WHERE industry = "Media"
;
*/



/**/
-- KOMBINATION Preis/Dividende pro Industriesektor
SELECT
    sector Industriesektor, -- organisch
    ROUND(AVG(price),2) Durchschnittspreis, -- aggregiert (berechnet)
    AVG(dividend) Durchschnittsdividende -- aggregiert (berechnet)
FROM stocks.ccc
GROUP BY sector -- Gruppieren nach organ. Daten/Spalte/Feld
#ORDER BY Durchschnittspreis DESC
ORDER BY Durchschnittsdividende DESC
;


