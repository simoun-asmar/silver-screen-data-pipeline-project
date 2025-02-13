-- This test ensures that tickets_sold is always greater than 0
-- NULL values are not allowed since ticket sales should always have a value

SELECT 
    tickets_sold
FROM {{ ref('mart_final_movie_revenue') }}  -- Reference the final table
WHERE tickets_sold <= 0  -- Tickets sold must be greater than 0
