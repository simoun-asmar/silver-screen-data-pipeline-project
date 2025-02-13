WITH monthly_revenue_nj001 AS (

    SELECT 
        DATE_TRUNC('month', timestamp) AS month,  -- Get the month from the full timestamp
        movie_id,                                
        SUM(ticket_amount) AS tickets_sold,      -- Total number of tickets sold that month
        SUM(transaction_total) AS revenue        -- Total revenue made from ticket sales

    FROM {{ source('SILVER_SCREEN', 'NJ_001') }}  -- Pull data from the NJ_001 location

    GROUP BY month, movie_id                     -- Group by movie and month to sum up sales
    ORDER BY month                               -- Sort by month so it’s easier to analyze trends
)

SELECT * FROM monthly_revenue_nj001           
