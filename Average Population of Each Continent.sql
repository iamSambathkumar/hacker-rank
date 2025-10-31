-- Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

SELECT 
    country.Continent,
    FLOOR(AVG(city.Population)) AS AverageCityPopulation
FROM COUNTRY country
LEFT JOIN CITY city ON country.Code = city.CountryCode
WHERE city.Population IS NOT NULL
GROUP BY country.Continent;