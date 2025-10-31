-- */
-- Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

-- */

SELECT SUM(ci.POPULATION) AS total_population
FROM CITY ci
JOIN COUNTRY co ON ci.CountryCode = co.Code
WHERE co.CONTINENT = 'Asia';
