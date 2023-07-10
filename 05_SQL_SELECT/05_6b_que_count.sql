/* QUERIES - count()*/

/* Links:
    https://dev.mysql.com/doc/refman/5.6/en/counting-rows.html
    https://dev.mysql.com/doc/refman/5.6/en/group-by-handling.html
    https://dev.mysql.com/doc/refman/5.6/en/aggregate-functions.html#function_count-distinct
*/

-- WELCHE verschiedenen Sektoren gibt es?
/*
SELECT
    DISTINCT sector Industriesektoren
FROM stocks.ccc
ORDER BY sector ASC
;
*/

-- WIEVIELE verschiedene Sektoren gibt es?
/*
SELECT
    COUNT(DISTINCT sector) "Anzahl Industriesektoren"
FROM stocks.ccc
;
*/

-- WELCHE verschiedenen Branchen ?
-- WIEVIELE verschiedene Branchen ?
/*
SELECT
    DISTINCT industry Branchen
FROM stocks.ccc
ORDER BY Branchen ASC
;

SELECT
    COUNT(DISTINCT industry) "Anzahl Branchen"
FROM stocks.ccc
;
*/


-- Wieviele VERSCHIEDENE Branchen gibt es 
-- in den jeweiligen Industriesektoren?
/*
SELECT
    sector Industriesektoren, -- nicht aggregiert / organisch
    COUNT(DISTINCT industry) AS Branchen -- aggregiert / durch eine Fkt. entstanden
FROM stocks.ccc
WHERE sector LIKE "Co%" -- Filter in NICHT aggr.(organischen) Feldern
GROUP BY sector -- bei Kombination organisch /aggr.
HAVING Branchen > 10 -- Filter in aggr. Felder / nach GROUP
ORDER by Branchen DESC
;
*/

-- Wieviele Unternehmen gibt es in den verschiedenen Branchen?

/*
-- Variante 1
SELECT 
    industry, 
    COUNT(*) AS Anzahl
FROM stocks.ccc
GROUP BY industry
ORDER BY Anzahl DESC
;
*/


/*
-- Variante 2
SELECT
    industry Branche,
    COUNT(DISTINCT c_name) AS Unternehmen
FROM stocks.ccc
GROUP BY industry
ORDER by Unternehmen DESC
;
*/

