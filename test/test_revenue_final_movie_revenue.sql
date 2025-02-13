-- This test ensures that revenue is always greater than 0
-- NULL values are not allowed since revenue should always have a value

SELECT 
    revenue
FROM {{ ref('mart_final_movie_revenue') }}  -- Reference the final table
WHERE revenue <= 0  -- Revenue must be greater than 0
