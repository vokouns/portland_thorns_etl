# Pivot and Strike – Portland Thorns Match Data ETL

## Overview

This repository powers the data pipeline for Pivot and Strike's analytics on Portland Thorns FC. It combines **automated scraping** and **manual extraction** of match data from FBref to create structured, long-term datasets ready for analysis and visualization. The primary focus is on match-level metadata, team stats, and player performance across multiple seasons.

## Goals

- Build a centralized database of Portland Thorns match data.
- Blend automated and manual ETL methods to ensure completeness and accuracy.
- Prepare structured CSVs for SQL import, statistical modeling, and visual storytelling.

## Features

- **Automated scraping** of match metadata, team stats, and player tables from FBref using BeautifulSoup.
- **Manual data entry** for tables not easily parsed (e.g., passing stats, defensive stats, etc).
- **VBA scripting** used to assist in formatting and exporting consistent CSVs during manual data retrieval.
- **SQL Server** used to house database of collected stats from individual matches.
- Generation of a `match_metadata.csv` master file combining match metadata and team stats.

## ETL Pipeline

### Extract

Data from Portland Thorns FC matches are scraped or manually extracted from "Match Reports" on FBref and saved in CSV format for further data cleaning.

### Transform

Python, pandas, and VBA scripts are utilized to clean and standardize raw CSV files for future use in relational databases.

### Load

Cleaned and standardized CSV files are then loaded into a SQL Server relational database utilizing SQL Server Management Studio, which will then be further utilized to create queries for data export to data visualization tools.

## Project Structure

```
portland_thorns_etl/
├── Data/                      # All scraped and cleaned CSVs, including match_metadata.csv
├── Notebooks/                 # Jupyter notebooks for exploration or analysis
├── Queries/                   # SQL queries for SSMS (e.g., table creation, SELECT statements)
├── Templates/                 # Template CSVs used for manually extracted data
└── README.md                  # Project overview and documentation
```

## Tools Used

- **Python**: scripting, scraping, and data processing
- **pandas**: data wrangling and transformation
- **VBA**: assisting with manual extraction and CSV formatting
- **SQL Server**: loading and managing structured data
- **SSMS (SQL Server Management Studio)**: database interface for schema creation and queries

## Status

This project is active and under development. Current progress includes complete match data capture (both automated and manual), generation of structured CSVs, and the initial phase of loading into a SQL Server database via SSMS. Future plans include player-level metrics, season-wide summaries, and interactive dashboard visualizations.
