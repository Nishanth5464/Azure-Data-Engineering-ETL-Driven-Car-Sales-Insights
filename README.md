# Azure Data Engineering: ETL-Driven Car Sales Insights

This project showcases a comprehensive data engineering workflow built on the Medallion Architecture. It processes the AdventureWorks dataset, hosted on GitHub, utilizing various Azure services. The pipeline spans from raw data ingestion to delivering final insights through Power BI dashboards, offering a well-structured and scalable ETL solution.

<img width="1470" alt="Screenshot 2025-01-22 at 12 33 37 PM" src="https://github.com/user-attachments/assets/c357144c-9dc7-4bf9-88cf-8dd9593a8a19" />

# Medallion Architecture Layers

<img width="1470" alt="Screenshot 2025-01-22 at 12 39 37 PM" src="https://github.com/user-attachments/assets/d4329126-d066-4bb4-b3f3-dc178c6a09e1" />


Bronze Layer:
Raw data is imported into the Azure Data Lake via pipelines created using Azure Data Factory (ADF). A Linked Service is configured for both GitHub (using an HTTP Linked Service) and the Azure Data Lake to access the dataset. Dynamic pipelines leverage LookUp and ForEach activities to ingest multiple CSV files (10 files in total for this project).

Silver Layer:
Data transformation is carried out in Azure Databricks, where processes such as data cleansing, validation, and enrichment are performed. The refined data is then stored in a dedicated Silver container for further processing.

Gold Layer:
Azure Synapse Analytics is utilized to define an external table schema within a Gold layer. Data stored in the Silver container is made queryable as traditional tables using the OPENROWSET() function. This stage stores aggregated, analytics-ready data in the Gold container for advanced analysis.

Visualization:
Power BI is integrated with Azure Synapse Analytics to enable visualization of the analytics-ready data. Interactive dashboards provide key insights, such as sales trends and performance, based on the AdventureWorks dataset.

# Architecture Diagram

The workflow follows the Medallion Architecture pattern:
![Workflow Diagram](https://github.com/user-attachments/assets/61080e7c-6802-496c-8e43-496595072073)

#Technical Stack

The project utilizes the following technologies:

Azure Data Factory: For Data Ingestion and Pipeline Creation.
Azure Data Lake: For Data Storage in Bronze, Silver, and Gold containers.
Azure Databricks: For Data Transformation and enrichment.
Azure Synapse Analytics: For querying and managing external tables.
Power BI: For Data Visualization and Reporting.

AdventureWorks Dataset: https://www.kaggle.com/datasets/ukveteran/adventure-works/data
Source: GitHub
Type: CSV files (10 files ingested)
Description: Contains sales data used for reporting and analysis.

# ETL Pipeline

# Data Ingestion:
ADF dynamically ingests CSV files from GitHub into the Bronze container. Uses parameterized pipelines for scalability.
![Synapse](https://github.com/user-attachments/assets/39ae4592-490d-4f10-a153-3e406b326dfe)


# Data Transformation
Databricks performs cleaning and transformations. Data is saved in the Silver container for further analysis.

<img width="1470" alt="Screenshot 2025-01-22 at 1 04 29 PM" src="https://github.com/user-attachments/assets/b6908373-12fa-47ea-910a-28487b8382d8" />

# Data Preparation for Analytics
Synapse Analytics enables querying of data from the Silver container. Finalized analytics ready data is saved in the Gold container.

<img width="1470" alt="Screenshot 2025-01-22 at 1 06 56 PM" src="https://github.com/user-attachments/assets/ce910524-8147-41ac-90e8-24945da695c9" />

# Visualization
Power BI connects to Synapse to create interactive dashboards for insights.
![Car Sales PowerBI Dashboard](https://github.com/user-attachments/assets/ba18194e-7e4d-4aca-8254-7f598f6eb2f9)


# Solution Highlights
Dynamic Pipelines: Parameterized Azure Data Factory pipelines streamline and automate the data ingestion process.
Efficient Transformations: Azure Databricks ensures data integrity and quality through robust transformation logic.
Seamless Querying: Azure Synapse Analytics facilitates straightforward data access with the OPENROWSET() function.
Interactive Dashboards: Power BI provides an intuitive and user-friendly visualization layer for creating reports and insights.

# Key Features
Implements the Medallion Architecture to enable structured and organized data processing.
Leverages multiple Azure services for a comprehensive, end-to-end data solution.
Builds a scalable and flexible framework for processing and analyzing large volumes of data.
Utilizes Power BI to visualize actionable sales data insights through interactive dashboards.














