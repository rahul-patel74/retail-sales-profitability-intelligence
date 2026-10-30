USE retail_sales_analytics;

-- Analysis 02: Monthly Sales and Profit Trends

SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS month_number,
    MONTHNAME(order_date) AS month_name,

    COUNT(DISTINCT order_id) AS total_orders,

    ROUND(SUM(sales), 2) AS monthly_sales,

    ROUND(SUM(profit), 2) AS monthly_profit,

    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin_percentage

FROM superstore_sales

GROUP BY
    YEAR(order_date),
    MONTH(order_date),
    MONTHNAME(order_date)

ORDER BY
    order_year,
    month_number;