# Description

London Bike Sharing Dataset Project
This project is designed to extract, transform, and load the London Bike Sharing dataset from Kaggle and insert it into a SQL Server database. It performs data extraction from Kaggle, transforms the data to clean and map various fields, and finally loads it into a specified SQL table.

## Workflow Steps

- Download the dataset: The script authenticates with Kaggle using the API and downloads the "London Bike Sharing Dataset" as a zip file.
- Extract the data: It extracts the dataset from the downloaded zip file and reads it into a pandas DataFrame.
- Transform the data:
 - Renames columns to be more descriptive (e.g., cnt becomes counts).
 - Normalizes the humidity values to percentages.
 - Maps numeric values for seasons and weather codes to human-readable labels.
- Load the data:
 - Inserts the transformed data into a SQL Server table.
 - Checks for the latest timestamp in the table and only inserts new records.

## Technique

- Python 3.x
- Kaggle API
- SQL Server
- ODBC Driver 17 for SQL Server

## Start the Pipeline

- Clone the repository
- Set up the .env file with the following environment variables
- Run script sql to create table in the database
- Run the script to download, process, and insert data into your SQL Server
