     WITH combined_rental_cost_and_revenue AS  (
        SELECT
            ticket.movie_id AS movie_id,
            ticket.month AS month,             
            ticket.location AS location,           -- Using ticket.location to ensure all movies are included, since some movies may not have rental data for certain months.
            rental.rental_cost as rental_cost,        -- Rental cost for showing the movie at the location
            ticket.tickets_sold AS tickets_sold,       -- Total number of tickets sold for the movie
            ticket.revenue AS revenue           -- Total revenue generated from ticket sales   
            
        FROM     
            {{ ref('int_all_location_ticket_revenue') }} AS ticket  -- Using dbt reference for revenue data 
        LEFT JOIN 
            {{ ref('int_all_location_rental_cost') }} AS rental  -- Using dbt reference for rental cost data
            ON rental.movie_id = ticket.movie_id 
            AND rental.location = ticket.location  -- Not using rental.location directly to avoid NULLs
            AND rental.month = ticket.month

        ORDER BY movie_id, month, location
     )

SELECT * FROM combined_rental_cost_and_revenue
