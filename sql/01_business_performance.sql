-- Retail Sales & Profitability Intelligence
-- Analysis 01: Overall Business Performance

USE retail_sales_analytics;

SELECT
    COUNT(*) AS total_order_lines,

    COUNT(DISTINCT order_id) AS total_orders,

    COUNT(DISTINCT customer_id) AS unique_customers,

    SUM(quantity) AS total_units_sold,

    ROUND(SUM(sales), 2) AS total_sales,

    ROUND(SUM(profit), 2) AS total_profit,

    ROUND(
        SUM(profit) / SUM(sales) * 100,
        2
    ) AS profit_margin_percentage,

    ROUND(
        SUM(sales) / COUNT(DISTINCT order_id),
        2
    ) AS average_order_value

FROM superstore_sales;