WITH clean_movie_catalogue AS (


    SELECT 
        movie_id,  -- Unique identifier for each movie
        movie_title,  -- Title of the movie
        release_date,  -- Date when the movie was released
        {{ fill_nulls('genre') }} AS genre,  -- Use the fill_nulls macro to replace NULL values in column 'genre' with 'Unknown'
        country,  -- Country where the movie was produced
        studio,  -- Name of the studio that produced the movie
        budget,  -- Budget allocated for producing the movie
        director,  -- Name of the movie director
        {{ fill_nulls('rating') }} AS rating,  -- Use the fill_nulls macro to replace NULL values in column 'rating' with 'Unknown'

    FROM {{ source('SILVER_SCREEN', 'MOVIE_CATALOGUE') }}  -- Reference to the source table

)


SELECT * FROM clean_movie_catalogue   -- Selecting everything from the cleaned movie catalogue CTE
