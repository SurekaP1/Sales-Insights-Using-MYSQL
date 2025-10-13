-- Show transaction table
SELECT * FROM sales.transactions;

-- total transactions
SELECT count(*) FROM sales.transactions;

-- show transactions for chennai market (market_code=Mark001)
SELECT * FROM sales.transactions where market_code='Mark001';

-- count of transaction where in chennai
SELECT count(*) FROM sales.transactions where market_code='Mark001';

-- Jion transactions table with date table jion by year
SELECT sales.transactions.*, sales.date.* FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date;

-- Show transactions in 2020 join by date table
SELECT sales.transactions.*, sales.date.* FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where date.year=2020;

-- show total revenue in 2020
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year=2020;

-- show total revenue in 2020, January Month
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year=2020 and sales.date.month_name="January";

-- total revenue in 2020 in chennai market_code="Mark001"
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year=2020
and sales.transactions.market_code="Mark001";