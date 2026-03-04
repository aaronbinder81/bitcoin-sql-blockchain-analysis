# Bitcoin Blockchain SQL Analysis

This project analyzes historical Bitcoin blockchain transaction data using PostgreSQL.

## Skills Demonstrated

- SQL data cleaning
- Common Table Expressions (CTEs)
- Aggregation and statistical analysis
- Time-series blockchain transaction analysis

## Technologies

- PostgreSQL
- SQL
- pgAdmin

## Key Analyses

- Transaction difficulty calculations
- Network fee revenue analysis
- Monthly transaction activity trends
- Average Bitcoin price analysis

## Example Query

```sql
SELECT 
trans_date,
code_size::numeric / transactions AS difficulty
FROM bitcoin_data;
