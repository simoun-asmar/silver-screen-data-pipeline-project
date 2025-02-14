WITH monthly_revenue_nj003 AS (

    SELECT 
        {{ month_trunc('timestamp') }} AS month,  -- Apply the month_trunc macro to truncate column 'timestamp' to the month level
        details AS movie_id,                     -- The movie we’re tracking revenue for
        SUM(amount) AS tickets_sold,             -- Total number of tickets sold that month
        SUM(total_value) AS revenue              -- Total revenue made from ticket sales

    FROM {{ source('SILVER_SCREEN', 'NJ_003') }}  -- Pull data from the NJ_003 location

    WHERE product_type = 'ticket'               -- Only include ticket sales, ignore other products
    GROUP BY month, movie_id                    -- Group by movie and month to sum up sales
    ORDER BY month                              -- Sort results by month so trends are clear

)

SELECT * FROM monthly_revenue_nj003
