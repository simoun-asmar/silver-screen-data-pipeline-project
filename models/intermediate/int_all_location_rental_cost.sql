WITH monthly_rental_revenue AS (

    SELECT 
        month,                                  -- The month the rental was charged
        movie_id,                               
        location_id AS location,                -- The theater location
        Studio,                                 -- The studio that owns the movie
        SUM(total_invoice_sum) AS rental_cost   -- Total rental cost for that movie at the location

    FROM {{ source('SILVER_SCREEN', 'INVOICES') }}  -- Pull data from the invoices source

    GROUP BY month, movie_id, location, studio  -- Group by month, movie, location, and studio
    ORDER BY month                              -- Sort by month so trends are easier to analyze

)

SELECT * FROM monthly_rental_revenue           -- Return the final rental cost data per month
