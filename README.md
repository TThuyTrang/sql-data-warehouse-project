# Data Warehouse and Analytics Project

## Overview

This project demonstrates the design and implementation of a modern Data Warehouse using SQL Server. The solution integrates data from multiple business systems (CRM and ERP), applies data quality transformations, and delivers analytics-ready datasets for reporting and decision-making.

The project follows the Medallion Architecture approach with Bronze, Silver, and Gold layers to ensure scalability, maintainability, and clear separation of responsibilities throughout the data pipeline.

---

## Project Objectives

* Build a centralized Data Warehouse from multiple source systems.
* Develop ETL pipelines to ingest, cleanse, and transform data.
* Create a dimensional model optimized for analytical workloads.
* Generate business insights related to customers, products, and sales performance.
* Demonstrate Data Engineering and Data Analytics best practices.

---

## Data Architecture

The project adopts the Medallion Architecture consisting of three layers:

### Bronze Layer

Stores raw data imported directly from source CSV files without modifications.

Responsibilities:

* Data ingestion
* Raw data preservation
* Source system replication

### Silver Layer

Performs data cleansing, validation, standardization, and enrichment.

Responsibilities:

* Removing duplicates
* Handling missing values
* Standardizing formats
* Data quality validation
* Business rule implementation

### Gold Layer

Provides business-ready analytical datasets using a Star Schema design.

Responsibilities:

* Fact and dimension modeling
* Query optimization
* Reporting and dashboard support

---

## Data Sources

The warehouse integrates data from two operational systems:

### CRM System

Contains:

* Customer information
* Product information
* Sales transactions

### ERP System

Contains:

* Customer demographics
* Product categories
* Location information

Data is provided as CSV files and loaded into SQL Server.

---

## ETL Process

### Extract

* Import CSV files into Bronze tables.

### Transform

* Clean invalid records.
* Remove duplicates.
* Standardize customer and product attributes.
* Validate sales calculations.
* Normalize categorical fields.

### Load

* Load transformed data into Silver tables.
* Build analytical models in Gold tables.

---

## Data Model

The Gold layer follows a Star Schema design consisting of:

### Fact Table

* Fact Sales

### Dimension Tables

* Dim Customer
* Dim Product

The model is designed to support fast analytical queries and reporting workloads.

---

## Analytics & Reporting

The warehouse enables analysis of:

### Customer Analysis

* Customer segmentation
* Customer purchasing behavior
* Top customers by revenue

### Product Analysis

* Best-selling products
* Product category performance
* Revenue contribution by product

### Sales Analysis

* Revenue trends
* Order volume analysis
* Sales performance over time

---

## Technologies Used

* SQL Server Express
* SQL Server Management Studio (SSMS)
* T-SQL
* Draw.io
* Git & GitHub

---

## Repository Structure

```text
data-warehouse-project/
│
├── datasets/
│
├── docs/
│   ├── data_architecture.drawio
│   ├── data_flow.drawio
│   ├── data_models.drawio
│   ├── data_catalog.md
│   └── naming_conventions.md
│
├── scripts/
│   ├── bronze/
│   ├── silver/
│   └── gold/
│
├── tests/
│
├── README.md
├── LICENSE
└── .gitignore
```

---

## Key Skills Demonstrated

* Data Warehouse Design
* Medallion Architecture
* ETL Development
* SQL Programming
* Data Cleaning and Validation
* Data Modeling
* Dimensional Modeling
* Business Analytics
* Data Engineering Best Practices

---

## Future Improvements

* Implement incremental loading.
* Add data quality monitoring.
* Automate pipeline scheduling.
* Integrate Power BI dashboards.
* Deploy to Azure Data Factory and Azure SQL Database.

---

## Author

This project was developed as a portfolio project to demonstrate practical Data Engineering and Analytics skills using SQL Server and modern data warehousing techniques.
