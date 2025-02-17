#  Staging Model – Clean Movie Catalogue

This folder contains **staging models** that prepare raw source data for further transformations.  
The staging layer ensures **data consistency, handles missing values, and standardizes column formats** before moving into fact and intermediate models.

##  What This Model Does:

- **Extracts movie details** from the raw movie catalogue.
- **Handles missing values** using the `fill_nulls` macro to replace `NULL` values with `'Unknown'`.
- **References the source table** `SILVER_SCREEN.MOVIE_CATALOGUE` to ensure a structured extraction.

##  Model in This Folder:
- 📄 [`stg_clean_movie_catalogue.sql`](stg_clean_movie_catalogue.sql) – Cleans and prepares movie metadata.

##  How This Model Works:
- **Source Data**: Uses `{{ source('SILVER_SCREEN', 'MOVIE_CATALOGUE') }}` to extract movie details.
- **Macro Usage**: Applies `fill_nulls('genre')` and `fill_nulls('rating')` to ensure no missing values.
- **Data Cleaning**: Ensures movie details are structured and ready for further processing.

➡️ **[Next Model](../facts/)** 🔗  
_Click the link above to explore the next transformation step._
