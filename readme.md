# 🛒 E-Commerce Customer Analytics using PostgreSQL

An end-to-end SQL portfolio project that simulates a real-world e-commerce business. This project demonstrates database design, data generation, advanced SQL analysis, customer segmentation, and business intelligence techniques used by data analysts.

---

## 📌 Project Overview

The objective of this project is to analyze customer purchasing behavior and generate actionable business insights using PostgreSQL.

The project includes:

- Relational database design
- Realistic e-commerce dataset
- Business-focused SQL queries
- Customer segmentation using RFM Analysis
- Customer Lifetime Value (CLV)
- Cohort Analysis
- Advanced SQL techniques
- Power BI dashboard (planned)

---

## 🎯 Business Objectives

- Identify high-value customers
- Analyze customer purchasing behavior
- Measure sales performance
- Optimize marketing strategies
- Evaluate product performance
- Understand payment trends
- Analyze customer returns
- Support data-driven business decisions

---

# 🗄️ Database Schema

The database consists of seven normalized tables.

```text
Customers
    │
    ▼
Orders ─────────► Payments
    │
    ▼
Order_Items ───► Products ───► Categories
    │
    ▼
Returns
```

---

## 📂 Project Structure

```text
ecommerce-customer-analytics-sql/
│
├── README.md
├── INSIGHTS.md
├── LICENSE
├── .gitignore
│
├── schema/
│   ├── 01_customers.sql
│   ├── 02_categories.sql
│   ├── 03_products.sql
│   ├── 04_payments.sql
│   ├── 05_orders.sql
│   ├── 06_order_items.sql
│   └── 07_returns.sql
│
├── data/
│   ├── customers.sql
│   ├── products.sql
│   ├── payments.sql
│   ├── orders.sql
│   ├── order_items.sql
│   └── returns.sql
│
├── queries/
│   ├── basic_queries.sql
│   ├── intermediate_queries.sql
│   ├── advanced_queries.sql
│   ├── rfm_analysis.sql
│   ├── clv_analysis.sql
│   └── cohort_analysis.sql
│
├── dashboards/
│   └── powerbi_dashboard.pbix
│
└── images/
    └── er_diagram.png
```

---

# 🧰 Technologies Used

- PostgreSQL
- SQL
- pgAdmin
- Power BI
- Git
- GitHub

---

# 📊 SQL Concepts Demonstrated

### Beginner

- SELECT
- WHERE
- ORDER BY
- LIMIT
- DISTINCT

### Intermediate

- INNER JOIN
- LEFT JOIN
- GROUP BY
- HAVING
- CASE
- Aggregate Functions
- Subqueries

### Advanced

- Common Table Expressions (CTEs)
- Window Functions
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- NTILE()
- LAG()
- LEAD()
- Running Totals

---

# 📈 Business Analysis Performed

- Customer Analysis
- Sales Analysis
- Product Performance
- Revenue Analysis
- Payment Analysis
- Return Analysis
- Monthly Sales Trend
- Top Customers
- Top Products
- Customer Segmentation
- Customer Lifetime Value (CLV)
- Cohort Analysis

---

# 📊 Sample Business Questions

- Which customers generate the highest revenue?
- Which products sell the most?
- Which categories contribute the highest revenue?
- What is the monthly revenue trend?
- Which customers are inactive?
- Which products have never been ordered?
- What is the average order value?
- Which payment method is most popular?
- Which customers return the most products?
- How should customers be segmented using RFM?

---

# 📁 Dataset

The project includes realistic sample data for:

| Table | Records |
|--------|---------|
| Customers | 300 |
| Categories | 10 |
| Products | 200 |
| Payments | 300 |
| Orders | 300 |
| Order Items | 200+ |
| Returns | 40 |

---

# 🚀 How to Run

### 1. Clone the repository

```bash
git clone https://github.com/yourusername/ecommerce-customer-analytics-sql.git
```

### 2. Open PostgreSQL

Use pgAdmin or psql.

### 3. Execute SQL scripts

Run the schema scripts first:

```text
schema/
```

Then import the data:

```text
data/
```

Finally, execute the SQL analysis scripts:

```text
queries/
```

---

# 📊 Future Improvements

- Interactive Power BI Dashboard
- Customer Churn Analysis
- Sales Forecasting
- Inventory Optimization
- Customer Recommendation System
- Python Data Pipeline
- Automated Reporting

---

# 📸 Screenshots

Add screenshots of:

- Database ER Diagram
- PostgreSQL Query Results
- Power BI Dashboard
- Sales Dashboard
- RFM Dashboard

---

# 📚 Key Learning Outcomes

Through this project I learned:

- Relational database design
- SQL query optimization
- Business-oriented data analysis
- Customer segmentation techniques
- Advanced PostgreSQL features
- Window functions
- Common Table Expressions
- Data storytelling
- Business Intelligence concepts

---

# 🤝 Contributing

Contributions, suggestions, and improvements are welcome.

Feel free to fork this repository and submit a pull request.

---

# 👨‍💻 Author

**Kumar Satyam**

- GitHub: https://github.com/kumar56satyam
- LinkedIn: https://linkedin.com/in/yourprofile

---

⭐ If you found this project useful, consider giving it a star!
