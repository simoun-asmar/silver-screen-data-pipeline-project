-- This test ensures that rental_cost is greater than 0 when it has a value
-- NULL values are allowed when there is no rental data available

SELECT 
    rental_cost
FROM {{ ref('mart_final_movie_revenue') }}  -- Reference the final table
WHERE rental_cost IS NOT NULL AND rental_cost <= 0  -- Only check non-null values
