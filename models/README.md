#  Models Overview

This folder contains all **dbt models** used in the `Silver Screen` project. These models transform raw data from the `SILVER_SCREEN` database into structured tables, providing insights into **movie performance, ticket sales, and rental costs** across multiple locations.

---

##  Schema & Sources
The models rely on two key configuration files:

- 📄 **[`schema.yml`](./schema.yml)** – Defines the **structure, relationships, and validation tests** for transformed models.
- 📄 **[`silver_screen__sources.yml`](./silver_screen__sources.yml)** – Specifies **raw source tables** from the `SILVER_SCREEN` database, ensuring proper reference and consistency.

---

##  Model Categories
The transformation process follows a structured pipeline, progressing through multiple layers. Click the links below to explore each model category.

| Folder | Description |
|---------|------------|
| 📂 [**staging/**] | Cleans and standardizes raw source data before further transformations. |
| 📂 [**facts/**] | Aggregates **monthly ticket revenue** for each location. |
| 📂 [**intermediate/**] | Combines **rental costs and ticket revenue** into unified datasets. |
| 📂 [**marts/**] | Final reporting tables summarizing **movie performance per location and month**. |

---

##  How This Works
1️⃣ **Staging models** prepare the data by cleaning inconsistencies.  
2️⃣ **Fact models** extract key business metrics (e.g., ticket revenue).  
3️⃣ **Intermediate models** unify and standardize the datasets.  
4️⃣ **Mart models** generate final analytical tables for insights.

 **This structured approach ensures a clear, repeatable, and scalable data transformation pipeline.**

---

➡️ **[Start with Staging Models](staging/)** 🔗  
_Click the link above to begin exploring the first transformation step._
