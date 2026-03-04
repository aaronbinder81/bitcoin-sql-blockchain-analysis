SELECT 
    trans_date,
    code_size::numeric / transactions AS difficulty
FROM bitcoin_data;
