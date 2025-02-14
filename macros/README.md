# 📂 Macros Folder

This folder contains **custom dbt macros** that are used across different models in this project. Macros help **streamline transformations** and **avoid repetitive code**.

## Included Macros:
1. **`month_trunc(date_column)`** → Returns the first day of the month for a given date or timestamp.
2. **`fill_nulls(column_name)`** → Replaces `NULL` values in a column with a default value, such as `'Unknown'`.

These macros improve **code reusability** and ensure **consistent transformations** across models.

📄 **[View macros.sql](macros.sql)**  
_Click the link above to see the macro definitions._
