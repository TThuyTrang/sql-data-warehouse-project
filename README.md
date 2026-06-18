# 🚀 SQL Data Warehouse & Analytics Project

An end-to-end Data Warehouse solution built with SQL Server, covering data ingestion, transformation, dimensional modeling, and business analytics.

This project demonstrates practical Data Engineering concepts including ETL development, Medallion Architecture, Star Schema modeling, and analytical reporting.

---

## 🎯 Project Goals

* Consolidate CRM and ERP data into a centralized Data Warehouse
* Improve data quality through cleansing and transformation
* Build a scalable analytical data model
* Generate business-ready datasets for reporting and decision-making

---

## 🏗️ Architecture

The project follows the Medallion Architecture approach:

```text
CRM & ERP Data
        ↓
     Bronze
   (Raw Data)
        ↓
     Silver
(Clean & Transform)
        ↓
      Gold
(Star Schema)
        ↓
   Analytics
```

---

## ⚙️ What I Built

### 🥉 Bronze Layer

* Loaded raw CSV files into SQL Server using BULK INSERT
* Preserved source data for traceability and auditing

### 🥈 Silver Layer

* Removed duplicate records
* Handled missing and invalid values
* Standardized customer, product, and sales data
* Applied business validation rules
* Integrated CRM and ERP datasets

### 🥇 Gold Layer

Designed a Star Schema consisting of:

#### Dimension Tables

* dim_customers
* dim_products

#### Fact Table

* fact_sales

The final model is optimized for analytical queries and reporting.

---

## 📊 Analytics

Performed SQL-based analysis including:

* Customer Segmentation
* Product Performance Analysis
* Sales Trend Analysis
* Ranking Analysis
* Time-Series Analysis
* Performance Benchmarking
* Business Reporting

Generated curated datasets ready for BI dashboards and business intelligence applications.

---

## 📂 Repository Structure

```text
sql-data-warehouse-project/
│
├── datasets/
│   ├── raw/
│   │   ├── crm/
│   │   └── erp/
│   └── curated/
│
├── docs/
├── scripts/
│   ├── bronze/
│   ├── silver/
│   └── gold/
│
├── analytics/
└── README.md
```

---

## 🛠️ Technologies

* SQL Server
* T-SQL
* SSMS
* Draw.io
* Git & GitHub

---

## 🎓 Skills Demonstrated

* Data Warehousing
* ETL Pipeline Development
* Data Cleaning & Validation
* Data Modeling
* Star Schema Design
* SQL Analytics
* Business Intelligence Foundations

---

