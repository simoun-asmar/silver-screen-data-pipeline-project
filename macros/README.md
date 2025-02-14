# 📂 Macros Folder

This folder contains **custom dbt macros** that are used across different models in this project. Macros help **streamline transformations** and **avoid repetitive code**.

##  Included Macros:
1. **`month_trunc(date_column)`** → Extracts the first day of the month from a date or timestamp.
2. **`fill_nulls(column_name)`** → Replaces `NULL` values in a column with a default value, such as `'Unknown'`.

These macros improve **code reusability** and ensure **consistent transformations** across models.

📂 **[View Macros Folder](../macros.sql)**
