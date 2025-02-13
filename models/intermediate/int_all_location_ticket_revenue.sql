WITH combined_revenue_fact AS (

    -- Combine ticket revenue data from all three NJ locations
    SELECT 
        'NJ_001' AS location,                   -- Manually set location for NJ_001
        month,                                  -- The month of ticket sales
        movie_id,                               -- The movie being analyzed
        tickets_sold,                           -- Total number of tickets sold
        revenue                                 -- Total revenue from ticket sales
    FROM {{ ref('fact_monthly_ticket_revenue_nj001') }}  -- Using dbt reference for NJ_001

    UNION ALL  -- Combine without removing duplicates

    SELECT 
        'NJ_002' AS location,                   -- Manually set location for NJ_002
        month,
        movie_id,
        tickets_sold,
        revenue
    FROM {{ ref('fact_monthly_ticket_revenue_nj002') }}  -- Using dbt reference for NJ_002

    UNION ALL  

    SELECT 
        'NJ_003' AS location,                   -- Manually set location for NJ_003
        month,
        movie_id,
        tickets_sold,
        revenue
    FROM {{ ref('fact_monthly_ticket_revenue_nj003') }}  -- Using dbt reference for NJ_003

)

SELECT * FROM combined_revenue_fact             -- Get the combined ticket revenue data
