-- Convert date column
ALTER TABLE bitcoin_data
ALTER COLUMN trans_date TYPE DATE
USING trans_date::DATE;

-- Remove null price rows
DELETE FROM bitcoin_data
WHERE price_usd IS NULL;

-- Ensure numeric formatting
UPDATE bitcoin_data
SET price_usd = ROUND(price_usd,2);
