# dbt Project with Snowflake, AWS, and dbt

![dbt_diagram](https://github.com/user-attachments/assets/00112dcb-3002-46ef-9616-876cc989e1d9)

This repository contains a dbt project that leverages AWS as the storage layer, Snowflake as the data warehouse, and dbt (data build tool) for data transformation and analysis. The project implements a structured data pipeline with bronze, silver, and gold stages, ensuring a robust framework for data quality and readiness

Technologies Used
AWS S3: Data storage and ingestion layer.
Snowflake: Distributed, cloud-based data warehouse used for scalable data processing.
dbt: Data modeling and transformation tool, used to create and manage data transformations.

To enable Snowflake to access AWS S3 where the raw data is stored, an IAM role and a policy that grants Snowflake permission to read data from S3 was created.

Project Structure
The dbt project is organized into three primary layers, aligned with the medallion architecture:

Bronze (Raw Data Ingestion):

Raw data is ingested from AWS S3 into Snowflake, where it’s staged as-is in the Bronze layer. This layer contains the unaltered data for traceability and auditing purposes.
Silver (Staging Transformation):

In the Silver layer, raw data from the bronze stage undergoes cleansing, normalization, and initial transformations to create a more structured and usable dataset. This layer serves as a foundation for analytics.
Gold (Mart Layer):

The Gold or mart layer is the analytics and reporting layer, where data is fully transformed, aggregated, and optimized for business intelligence (BI) and advanced analytics. This layer contains high-quality, ready-to-use tables.
Gold Medallion Level
The Gold Medallion level resides in the mart layer and contains fully transformed data, optimized for analytics and BI, with strict standards of data quality applied.


Conclusion
This project showcases a robust data pipeline using Snowflake, AWS, and dbt. The three-tier data modeling approach (bronze, silver, and gold) ensures data quality and reliability, making it ready for analytical and BI use cases.
