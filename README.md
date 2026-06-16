# 🚀 SQL Data Warehouse Project

A modern Data Warehouse built with SQL Server following the Medallion Architecture (Bronze, Silver, Gold). The project demonstrates end-to-end ETL development, data cleansing, dimensional modeling, and analytical data preparation.

---

## 📌 Project Overview

This project consolidates CRM and ERP data into a centralized Data Warehouse for analytics and reporting.

### Key Objectives

* Import data from multiple source systems
* Clean and standardize raw data
* Build ETL pipelines using SQL Server
* Design a Star Schema model
* Create analytics-ready datasets

---

## 🏗️ Data Architecture

The warehouse follows the Medallion Architecture:

### 🥉 Bronze Layer

* Store raw data from CSV files
* Preserve source data integrity
* Support auditing and troubleshooting

### 🥈 Silver Layer

* Remove duplicates
* Handle missing values
* Standardize formats
* Validate and transform data

### 🥇 Gold Layer

* Build dimension tables
* Build fact tables
* Deliver business-ready analytical data

---

## 🔄 ETL Workflow

```text
CSV Files
    ↓
Bronze Layer
    ↓
Data Cleaning & Transformation
    ↓
Silver Layer
    ↓
Dimensional Modeling
    ↓
Gold Layer
```

---

## 📊 Data Model

### Dimension Tables

* Dim Customers
* Dim Products

### Fact Table

* Fact Sales

The final model follows a Star Schema design optimized for reporting and analytics.

---

## 🛠️ Technologies Used

* Microsoft SQL Server
* SQL Server Management Studio (SSMS)
* T-SQL
* Draw.io
* Git & GitHub

---

## 📂 Project Structure

```text
sql-data-warehouse-project/
│
├── datasets/
├── docs/
├── scripts/
│   ├── bronze/
│   ├── silver/
│   └── gold/
├── README.md
└── LICENSE
```

---

## 🎯 Skills Demonstrated

* Data Warehousing
* ETL Development
* Data Cleaning
* SQL Programming
* Dimensional Modeling
* Star Schema Design
* Data Engineering

---

## 📈 Project Outcomes

* Successfully integrated CRM and ERP datasets
* Built a complete Medallion Architecture pipeline
* Implemented data quality checks and transformations
* Developed a Star Schema for analytical workloads
* Produced business-ready datasets for reporting

---

