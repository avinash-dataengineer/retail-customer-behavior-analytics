# High-Traffic Retail Customer Behavior Analytics Engine (PoC)

## Project Overview
This repository functions as an advanced architectural prototype for an enterprise-level e-commerce data platform. The system demonstrates a complete end-to-end relational data engineering workflow: programmatically ingesting raw transactional streams, executing robust ETL transformations using Python, establishing a normalized schema in PostgreSQL, and provisioning an optimized Star Schema semantic layer to power downstream business intelligence solutions.

> **Data Engineering Context:** This public repository utilizes a stable mock dataset of 3,900 transactions across 18 dimensional attributes. It serves as a proof of concept (PoC) to validate pipeline orchestration, relational constraints, indexing strategies, and analytical query performance without exposing sensitive, high-volume production client data.

---

## Technical Stack & Infrastructure
* **Pipeline Orchestration & Transformations:** Python (Pandas, NumPy)
* **Relational Data Warehousing:** PostgreSQL (Advanced SQL, Window Functions, CTEs)
* **Business Intelligence & Modeling:** Power BI Desktop (DAX, Power Query, Star Schema)
* **Environment & Source Control:** Git/GitHub, Jupyter Notebook, Microsoft Excel

---

## Architectural Workflow & Implementation

### 1. Programmatic Ingestion & ETL Pipeline (Python)
* **Statistical Profiling:** Conducted structural schema reviews via `pandas` to isolate data distribution and structural types.
* **Data Quality Framework:** Built automated median-imputation logic mapped by product category to resolve missing values within customer metrics.
* **Feature Engineering:** Developed data transformation blocks to compute normalized demographic clusters (`age_group`) and delta tracking models (`purchase_frequency_days`).
* **Schema Optimization:** Executed strict data validation rules and a redundancy audit to eliminate overlapping columns, preserving downstream database integrity.

### 2. Relational Database Modeling & Analytics (PostgreSQL)
Migrated clean data structures from Python into a local PostgreSQL data warehouse. Written complex, production-grade analytical queries—leveraging window functions, aggregation joins, and Common Table Expressions (CTEs)—to answer core enterprise performance questions:
* **Revenue Performance Tuning:** Segmented total gross revenue matrices across demographic variables.
* **Behavior Optimization:** Tracked high-spending discount users against global average purchase margins to evaluate campaign efficacy.
* **Advanced Aggregations:** Developed relational ranking partitions to identify category-specific product leaders, cohort behaviors, and subscription penetration rates.

### 3. Semantic Data Modeling & Dashboard Delivery (Power BI)
* Transformed flat transactional data into a highly scalable **Star Schema Data Model**, explicitly defining fact and dimension tables.
* Optimized DAX query performance and established rigorous data consistency across reporting fields.
* Developed an executive-facing **Customer Behavior Dashboard** allowing leadership to track real-time revenue, customer loyalty segments, and shipping velocity.

---

## Executive Business Insights & Recommendations
* **Subscription Optimization:** Deploy targeted campaigns to monetize the un-subscribed customer majority by highlighting exclusive member utilities.
* **Loyalty Matrix Shift:** Leverage the engineered customer segmentation models to build retention workflows, driving "Returning" users into the high-value "Loyal" cluster.
* **Margin & Discount Governance:** Audit discount-dependent products to control gross margin erosion while sustaining sales velocity.
* **Precision Marketing:** Align regional marketing spend directly with high-revenue age groups (Young Adults) and top-grossing categories (Clothing).

---

## Repository Contents
* `Customer Shopping Dataset.csv` — Raw core transaction data
* `SQL Queries.sql` — Enterprise analytical workload script (CTEs, Window Functions)
* `Python Analysis Notebook.ipynb` — Programmatic ETL pipeline script
* `Power BI Dashboard.pbix` — Star Schema semantic layer and visualization file
* `customer_Behavior_Dashboard.png` — Dashboard layout preview
* `Business Problem Statement` — Contextual operational constraints
* `Project Presentation.pptx` — Strategic stakeholder presentation deck

---

## Dashboard Preview

![Dashboard](customer_Behavior_Dashboard.png)

---

## Author

**G Avinash**  
*Data Engineer*  

**GitHub:** [github.com/avinash-dataengineer](https://github.com/avinash-dataengineer)  
**LinkedIn:** [linkedin.com/in/avinashgurramkonda-data-analyst](http://linkedin.com)
