#Total count of transactions
select count(*) as total_transactions
from transactions;

#total Revenue
select round(sum(revenue),2) as total_revenue
from transactions;

#total revenue by year
select year, sum(revenue) as revenue
from transactions
group by year
order by year;

#total profit
select round(sum(profit),2) total_profit
from transactions;

#top transaction types

select transaction_type, sum(Revenue) as total_revenue
from transactions
group by Transaction_Type;

# profit by channel
select channel, sum(profit) as total_profit
from transactions
group by Channel
order by total_profit desc;

#Revenue by customer segment
select Customer_Segment, sum(Revenue) as total_revenue
from transactions
group by Customer_Segment
order by total_revenue;

# Revenue by engagement level
select engagement_level, sum(revenue )as total_revenue
from transactions
group by Engagement_Level;

#transactions by city
select city, count(*) as total_transactions
from transactions
group by city;

#fraud exposure
select fraud_flag,count(*) as total_txn
from transactions
group by Fraud_Flag;

#fraud by transaction type
select transaction_type, fraud_flag, count(*) as fraud_cases
from transactions
where fraud_flag= 'yes'
group by transaction_type, fraud_flag
order by fraud_cases desc
;
#fraud by channel
select channel, fraud_flag, count(*) as fraud_cases
from transactions
where Fraud_Flag = 'yes'
group by channel, fraud_flag
order by fraud_cases desc;

create or replace view dashboard as 
select
Transaction_ID,Date,Year,Month_Name,City,Customer_Segment,Engagement_Level,Transaction_Type,Channel,Transaction_Status,
Transaction_Amount,Revenue,Profit
from transactions;

create view fraud_analysis as 
select transaction_id, city,channel,Transaction_Amount, Fraud_Flag, Fraud_Risk_Score, transaction_type
from transactions