# Bitcoin SQL Analysis Results

This document summarizes key insights discovered from the SQL queries performed on the Bitcoin transaction dataset.

## 1. Transaction Difficulty
Using the query:

SELECT trans_date, code_size::numeric / transactions AS difficulty
FROM bitcoin_data;

Insight:
Transaction difficulty trends increased over time as the Bitcoin network grew and code complexity increased.

---

## 2. Network Fee Revenue

Query:

SELECT trans_date, median_transaction_fee * transactions AS fee_revenue
FROM bitcoin_data;

Insight:
Total network fees rose significantly during periods of high transaction volume.

---

## 3. May 2015 Transaction Analysis

Query:

SELECT
ROUND(AVG(price_usd),2)::money AS avg_price,
SUM(transaction_fees)::money AS total_transaction_amount
FROM bitcoin_data
WHERE trans_date BETWEEN '2015-05-01' AND '2015-05-31';

Insight:
Bitcoin's average price and total transaction fees during May 2015 provide insight into early network adoption patterns.

---

## Key Skills Demonstrated

• SQL data cleaning  
• Aggregation and statistical queries  
• Time-series analysis  
• Financial transaction analysis
