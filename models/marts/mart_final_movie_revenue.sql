WITH final_movie_revenue AS (

    --  The final table combining movie details, revenue, and rental costs using dbt references
    SELECT 
        catalogue.movie_id AS movie_id,        -- Unique identifier for the movie
        catalogue.movie_title AS title,     -- Movie title
        catalogue.genre AS genre,           -- Movie genre
        catalogue.studio AS studio,          -- Studio that produced the movie
        revenue.month AS month,              -- The month of the transaction
        revenue.location AS location,           -- Using ticket.location to ensure all movies are included, since some movies may not have rental data for certain months.
        revenue.rental_cost as rental_cost,        -- Rental cost for showing the movie at the location
        revenue.tickets_sold AS tickets_sold,       -- Total number of tickets sold for the movie
        revenue.revenue AS revenue           -- Total revenue generated from ticket sales

    FROM 
        {{ ref('stg_clean_movie_catalogue') }} AS catalogue  -- Using dbt reference for movie details
    LEFT JOIN 
        {{ ref('int_combined_rental_cost_and_revenue') }} AS revenue --  Using dbt reference for rental cost and revenue for all three locations
    ON catalogue.movie_id = revenue.movie_id

    ORDER BY movie_id, month, location

)

SELECT * FROM final_movie_revenue  -- Retrieve the final aggregated movie revenue table
