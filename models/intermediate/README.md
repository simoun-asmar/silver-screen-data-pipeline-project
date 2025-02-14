#  Intermediate Models – Data Unification & Transformation

This folder contains **intermediate models** that unify, clean, and aggregate data before moving to the final reporting stage. These transformations bridge the gap between **fact models** and the **final mart model** by ensuring consistency and completeness in the data.

## 🔹 What These Models Do:
- Integrate **rental cost** and **ticket revenue** across all locations.
- Standardize data formats to align different source structures.
- Prepare a **consolidated dataset** that feeds into the final reporting model.

##  Models in This Folder:
- 📄 [int_all_location_rental_cost.sql](int_all_location_rental_cost.sql) – Aggregates **monthly rental costs** for each location.
- 📄 [int_all_location_ticket_revenue.sql](int_all_location_ticket_revenue.sql) – Combines ticket revenue from all locations into a unified view.
- 📄 [int_combined_rental_cost_and_revenue.sql](int_combined_rental_cost_and_revenue.sql) – **Joins** rental cost and ticket revenue into a single dataset.

##  How These Models Work:
- **Data Sources:** Built using fact models like `fact_monthly_ticket_revenue_nj001`, `fact_monthly_ticket_revenue_nj002`, etc.
- **Transformation:** Uses **aggregation** (`SUM()`), **date standardization** (`DATE_TRUNC('month', date)`), and **joins** to unify data.
- **Feeds into Final Reporting:** The `int_combined_rental_cost_and_revenue.sql` model is used as input for the **final mart model**.

➡️ **[See the Next Step in the Process](../../README.md)** 🔗
