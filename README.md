Netflix / Streaming Analytics Project
Overview

This project analyzes Netflix movies and TV shows to uncover content trends, audience preferences, and growth patterns. It uses Python (pandas) for data cleaning, SQL for analysis, and Power BI for visualization.

Objectives
Analyze distribution of Movies vs TV Shows
Identify popular genres and ratings
Understand content growth over time
Explore country-wise content production

Tools & Technologies
Python (pandas, numpy) – Data cleaning & transformation
SQL – Data querying & analysis
Power BI – Dashboard & visualization

Dataset
Source: Kaggle Netflix Dataset
Contains information about titles, genres, ratings, duration, and release year

Data Cleaning (Python)
Handled missing values (director, cast, country)
Converted date columns to datetime format
Extracted features (year_added, month_added)
Split genres for better analysis
Cleaned duration into numeric format

SQL Analysis

Performed queries to:

Count total titles and content types
Analyze trends over years
Identify top genres and countries
Examine rating distribution
Compare movies vs TV shows

Power BI Dashboard

Dashboard includes:

KPI cards (Total Titles, Movies, TV Shows)
Content trend over time
Top genres and countries
Ratings distribution
Interactive filters (year, genre, type)

Key Insights
Significant growth in content after 2015
Movies dominate, but TV shows are increasing
Drama and Comedy are the most common genres
USA and India produce the most content

Project Structure
netflix-analytics/
│
├── data/
├── python/
│   cleaning.ipynb
│
├── sql/
│   queries.sql
│
├── powerbi/
│   dashboard.pbix
│
└── README.md

Conclusion

This project demonstrates end-to-end data analysis by transforming raw data into meaningful insights and presenting them through an interactive dashboard.
