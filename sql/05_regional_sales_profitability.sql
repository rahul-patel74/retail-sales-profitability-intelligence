USE retail_sales_analytics;

-- Analysis 05: Regional Sales and Profitability

SELECT
    region,

    COUNT(*) AS total_order_lines,

    COUNT(DISTINCT order_id) AS total_orders,

    COUNT(DISTINCT customer_id) AS unique_customers,

    SUM(quantity) AS total_units_sold,

    ROUND(SUM(sales), 2) AS total_sales,

    ROUND(SUM(profit), 2) AS total_profit,

    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin_percentage

FROM superstore_sales

GROUP BY region

ORDER BY total_profit DESC;




-- State-Level Sales and Profitability Analysis

SELECT
    state,
    region,

    COUNT(*) AS total_order_lines,

    COUNT(DISTINCT order_id) AS total_orders,

    ROUND(SUM(sales), 2) AS total_sales,

    ROUND(SUM(profit), 2) AS total_profit,

    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin_percentage,

    CASE
        WHEN SUM(profit) < 0 THEN 'Loss-Making'

        WHEN SUM(profit) / NULLIF(SUM(sales), 0) * 100 < 5
            THEN 'Low Margin'

        WHEN SUM(profit) / NULLIF(SUM(sales), 0) * 100 >= 15
            THEN 'High Margin'

        ELSE 'Moderate Margin'
    END AS performance_status

FROM superstore_sales

GROUP BY
    state,
    region

ORDER BY
    total_profit ASC;



-- Identify High-Sales Loss-Making States

SELECT
    state,
    region,

    ROUND(SUM(sales), 2) AS total_sales,

    ROUND(SUM(profit), 2) AS total_profit

FROM superstore_sales

GROUP BY
    state,
    region

HAVING
    SUM(sales) > 50000
    AND SUM(profit) < 0

ORDER BY total_profit ASC;