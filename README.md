# 🎬 **Silver Screen Movie Revenue Analysis – Project Overview**  

##  **Project Goal**  
The **Silver Screen Movie Revenue Analysis** project is a **data pipeline built with dbt (Data Build Tool)** to analyze the financial performance of **Silver Screen** theater locations in **New Jersey**. The project integrates **movie rental costs, ticket sales, and revenue data** from multiple sources to provide insights into **movie profitability, rental cost efficiency, and theater performance**.

---

##  **Business Problem**  

Silver Screen, a **regional movie theater chain** in New Jersey, has been experiencing **inconsistent profitability across locations**.  
Company executives want to **understand the relationship between movie rental costs and ticket revenue** to optimize their **rental strategy and pricing decisions**.

###  **Key Questions to Answer**  
1️⃣ **Are certain movies more profitable than others?**  
2️⃣ **Which locations generate the most revenue?**  
3️⃣ **Does the rental cost for a movie correlate with its ticket sales revenue?**  
4️⃣ **How do ticket sales vary across different months and locations?**  
5️⃣ **Are there any data inconsistencies that impact business decisions?**  

Silver Screen management needs a **data-driven strategy** to **maximize revenue, reduce losses, and make informed decisions on future movie acquisitions**.

---

##  **Project Solution – Data Pipeline**  

To answer these business questions, a **dbt-based data pipeline** was designed. The pipeline consists of **multiple layers of transformations**, ensuring data is **cleaned, structured, and ready for analysis**.

###  **Data Flow & Transformation Process**  
1️⃣ **Extract & Load Data**: Movie rental costs and ticket transactions are sourced from **five datasets**.  
2️⃣ **Staging Layer**: Raw data is **cleaned** and **missing values are handled** using dbt **macros**.  
3️⃣ **Fact Models**: Monthly ticket revenue is aggregated **per location, per movie**.  
4️⃣ **Intermediate Models**: Revenue and rental costs are **merged** into a unified dataset.  
5️⃣ **Final Mart Model**: A **business-ready table** provides monthly **movie performance** across all locations.  
6️⃣ **Testing & Validation**: Custom SQL tests ensure **data accuracy** before business insights are generated.  
7️⃣ **Reporting in Snowflake**: The transformed data is **stored as tables and views** for analysis.  

📌 The **entire process is automated using dbt**, ensuring **consistent transformations, data integrity, and scalability**.

---

##  **Dataset Overview**  

The analysis is built using data from **multiple sources**:  

| 📂 Dataset | 📄 Description |
|------------|--------------|
| **`MOVIE_CATALOGUE`** | List of movies rented by Silver Screen, including **title, genre, studio, and budget**. |
| **`INVOICES`** | Monthly rental costs for each movie at each theater location. |
| **`NJ_001`** | Detailed **ticket transactions** from theater location **NJ_001**. |
| **`NJ_002`** | Aggregated **daily ticket sales** from location **NJ_002**. |
| **`NJ_003`** | Individual **ticket purchases, including snacks & drinks**, from location **NJ_003**. |

 **Challenge:**  
Since each location **stores data in different formats**, the pipeline ensures **uniformity and consistency** across all datasets.

---

##  **Project Structure**  

The repository is organized into **structured folders**, each representing a different step in the data pipeline.

| 📂 Folder | 📄 Description |
|-----------|--------------|
| **`macros/`** | Custom dbt macros used for **standardizing date truncation** and **handling missing values**. |
| **`models/`** | Contains all **dbt models**, structured in **staging, facts, intermediate, and final marts**. |
| **`test/`** | SQL test cases ensuring **data quality and integrity**. |
| **`snowflake/`** | Final **transformed tables and views** stored in Snowflake. |

📌 **Each model is documented with explanations and images, making it easy to understand the transformations.**

---

##  **Key Business Insights & Outcomes**  

This project helps **Silver Screen** answer **critical business questions** and optimize its revenue strategy. Some key insights include:

 **High Rental Costs Don't Always Mean High Revenue**:  
- Some movies with **high rental costs** fail to generate proportional revenue.  
- **Insight**: Silver Screen should **re-evaluate its rental agreements** and focus on **high-return movies**.  

 **Location-Based Revenue Trends**:  
- Some theater locations **consistently perform better** than others.  
- **Insight**: Silver Screen can **allocate more marketing budget** to underperforming locations.  

 **Seasonal Trends in Ticket Sales**:  
- Revenue fluctuates **across different months**, showing **seasonal patterns**.  
- **Insight**: Silver Screen can **adjust pricing** during peak and low-demand periods.  

 **Data-Driven Decision Making**:  
- The **final mart table** enables **data analysts and executives** to make **fact-based** business decisions.  

---

##  **Technologies Used**  

This project leverages a **modern data stack** to build an **efficient, scalable, and automated** data pipeline.  

|  Tool | 📄 Purpose |
|---------|----------|
| **dbt (Data Build Tool)** | Manages SQL transformations, dependency management, and model testing. |
| **Snowflake** | Stores the **final transformed tables and views** for analysis. |
| **PostgreSQL** | Initial data exploration and query optimization. |
| **GitHub** | Version control for all **dbt models, macros, and SQL scripts**. |
| **Jinja (dbt Macros)** | Automates SQL transformations with reusable functions. |

---

##  **Conclusion**  

The **Silver Screen Movie Revenue Analysis** provides a **structured, automated, and scalable solution** to analyze **theater performance, rental efficiency, and revenue trends**.  

✅ **Key Takeaways:**  
✔️ **Data-driven insights help optimize business decisions.**  
✔️ **Automated transformations ensure data accuracy & consistency.**  
✔️ **A well-structured dbt pipeline enables scalability for future analysis.**  

---

###  **Explore the Full Project**  

➡️ **[View the Full Project & Data Transformations](macros/)** 🔗  
_Click the link above to explore **all project components, including detailed data transformations, model explanations, and testing insights!**_ 

---

### 🙌 **Thank You for Exploring This Project!**  

I appreciate your time reviewing this project. If you have any **feedback, suggestions, or questions**, feel free to reach out! 😊
