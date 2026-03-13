#OPay Transaction & Fraud Analysis Dashboard
Project Overview
This project is an end-to-end data analysis and business intelligence project focused on analyzing digital financial transactions. The objective of the project is to explore transaction trends, understand customer behavior, evaluate revenue performance, and identify potential fraud patterns within the dataset.
The project demonstrates the full workflow of a data analyst, including data cleaning, SQL analysis, data modeling, and dashboard visualization.
The dataset contains transaction records including revenue, profit, customer segments, engagement levels, transaction channels, geographic locations, and fraud indicators.
Business Objectives
The analysis was designed to answer key business questions such as:
How has revenue grown over time?
Which transaction types generate the most revenue?
Which customer segments contribute the most value?
Which cities generate the highest transaction activity?
Which channels are the most profitable?
What patterns exist in fraudulent transactions?
Tools & Technologies
The following tools were used throughout the project:
Microsoft Excel – Data cleaning and preparation
MySQL – Data querying, aggregation, and analysis
Power BI – Data visualization and dashboard development
GitHub – Project documentation and portfolio hosting
Project Workflow
1. Data Cleaning
The dataset was cleaned and standardized using Microsoft Excel. The process included:
Removing duplicate records
Handling missing values
Standardizing date formats
Ensuring numerical fields were correctly formatted
Verifying categorical data consistency
2. SQL Data Analysis
The cleaned dataset was imported into MySQL where SQL queries were used to analyze business metrics.
Key SQL analysis included:
Total revenue and profit calculations
Revenue trends by year
Transaction volume analysis
Customer segmentation analysis
Geographic transaction distribution
Fraud detection analysis
Example SQL Query:
SELECT Year, SUM(Revenue) AS Total_Revenue FROM transactions GROUP BY Year ORDER BY Year;
3. Data Modeling
SQL views were created to structure the dataset for dashboard visualization and to simplify Power BI integration.
Example:
CREATE VIEW dashboard_view AS SELECT Transaction_ID, Date, YEAR(Date) AS Year, MONTHNAME(Date) AS Month, City, Channel, Transaction_Type, Customer_Segment, Engagement_Level, Transaction_Amount, Revenue, Profit, Fraud_Flag, Fraud_Risk_Score FROM transactions;
4. Power BI Dashboard
Interactive dashboards were created in Power BI to present insights visually.
The dashboard contains multiple pages:
Business Overview
Total Revenue KPI
Total Profit KPI
Total Transactions KPI
Revenue Trend Over Time
Revenue by Transaction Type
Customer Insights
Revenue by Customer Segment
Revenue by Engagement Level
Transactions by City
Fraud Analysis Dashboard
Fraud vs Non-Fraud Transactions
Fraud by Channel
Fraud by Transaction Type
Fraud Risk Analysis
Key Insights
Some insights discovered during the analysis include:
Revenue shows consistent growth across multiple years.
Certain transaction types contribute significantly more to revenue generation.
Highly engaged customers generate the largest share of revenue.
Major urban areas account for the majority of transaction activity.
Fraudulent transactions occur more frequently within specific channels and transaction types.
