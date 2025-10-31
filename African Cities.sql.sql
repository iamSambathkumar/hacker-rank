-- Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT ci.name
from CITY ci 
LEFT JOIN COUNTRY ct 
on ci.CountryCode = ct.Code
WHERE CONTINENT = 'africa'