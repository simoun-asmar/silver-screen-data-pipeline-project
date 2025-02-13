WITH clean_movie_catalogue AS (


    SELECT 
        movie_id,  -- Unique identifier for each movie
        movie_title,  -- Title of the movie
        release_date,  -- Date when the movie was released
        COALESCE(genre, 'Unknown') AS genre,  -- Replaces NULL values in genre with 'Unknown'
        country,  -- Country where the movie was produced
        studio,  -- Name of the studio that produced the movie
        budget,  -- Budget allocated for producing the movie
        director,  -- Name of the movie director
        COALESCE(rating, 'Unknown') AS rating  -- Replaces NULL values in rating with 'Unknown'

    FROM {{ source('SILVER_SCREEN', 'MOVIE_CATALOGUE') }}  -- Reference to the source table

)


SELECT * FROM clean_movie_catalogue   -- Selecting everything from the cleaned movie catalogue CTE
