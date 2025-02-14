# 🏛 Facts Models – Monthly Ticket Revenue  

This folder contains **fact models** that aggregate **monthly ticket revenue** for each Silver Screen theater location. These models transform raw transaction data from different sources into structured and aggregated datasets.  

##  What These Models Do:
- Extract **monthly ticket sales and revenue** for each location.
- Ensure consistency by unifying data from different formats.
- Serve as the foundation for further transformations in the **intermediate and final models**.

## Models in This Folder:
- 📄 [fact_monthly_ticket_revenue_nj001.sql](./fact_monthly_ticket_revenue_nj001.sql) – Aggregates ticket sales and revenue for **NJ_001**.  
- 📄 [fact_monthly_ticket_revenue_nj002.sql](./fact_monthly_ticket_revenue_nj002.sql) – Aggregates ticket sales and revenue for **NJ_002**.  
- 📄 [fact_monthly_ticket_revenue_nj003.sql](./fact_monthly_ticket_revenue_nj003.sql) – Aggregates ticket sales and revenue for **NJ_003**.  

##  How These Models Work:
- **Source Data**: These models use **raw transaction data** from the `SILVER_SCREEN` database, pulling data from `NJ_001`, `NJ_002`, and `NJ_003` tables.  
- **Aggregation**: Instead of hardcoding `DATE_TRUNC('month', timestamp)`, these models leverage the **`month_trunc()` macro** to standardize monthly aggregation across all locations.  
- **Filtering**: The NJ_003 dataset required **filtering** to exclude non-ticket transactions.  
- **Consistency**: Since different locations had different data formats, transformations ensured uniformity across all models.  

