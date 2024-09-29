-- Step 1: Find the highest and lowest population per state
WITH MaxMinPopulations AS (
    SELECT
        state,
        MAX(population) AS max_population,
        MIN(population) AS min_population
    FROM Locations
    GROUP BY state
),

-- Step 2: Find the city names corresponding to the highest and lowest populations per state
HighestLowestCities AS (
    SELECT
        l.state,
        MAX(CASE WHEN l.population = mp.max_population THEN l.city END) AS highest_population_city,
        MAX(CASE WHEN l.population = mp.min_population THEN l.city END) AS lowest_population_city
    FROM Locations l
    JOIN MaxMinPopulations mp
        ON l.state = mp.state
    GROUP BY l.state
)

-- Step 3: Select the results and limit to 3 records
SELECT
    state,
    highest_population_city,
    lowest_population_city
FROM HighestLowestCities
ORDER BY state
OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY;
