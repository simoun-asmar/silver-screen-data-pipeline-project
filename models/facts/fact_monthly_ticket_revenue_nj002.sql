WITH monthly_revenue_nj002 AS (

    SELECT 
        DATE_TRUNC('month', date) AS month,  -- Get the month from the full date
        movie_id,                           
        SUM(ticket_amount) AS tickets_sold, -- Total number of tickets sold that month
        SUM(total_earned) AS revenue        -- Total revenue made from ticket sales

    FROM {{ source('SILVER_SCREEN', 'NJ_002') }}  -- Pull data from the NJ_002 location

    GROUP BY month, movie_id                -- Group by movie and month to sum up sales
    ORDER BY month                          -- Sort by month so it’s easier to analyze trends
)

SELECT * FROM monthly_revenue_nj002
