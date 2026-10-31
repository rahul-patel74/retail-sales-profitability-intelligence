USE retail_sales_analytics;

-- Analysis 06: Customer Segmentation and Purchasing Behaviour

SELECT
    segment,

    COUNT(*) AS total_order_lines,

    COUNT(DISTINCT customer_id) AS unique_customers,

    COUNT(DISTINCT order_id) AS total_orders,

    SUM(quantity) AS total_units_sold,

    ROUND(SUM(sales), 2) AS total_sales,

    ROUND(SUM(profit), 2) AS total_profit,

    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin_percentage,

    ROUND(
        SUM(sales) / COUNT(DISTINCT customer_id),
        2
    ) AS sales_per_customer

FROM superstore_sales

GROUP BY segment

ORDER BY total_sales DESC;




-- Individual Customer Performance and Ranking

WITH customer_summary AS (

    SELECT
        customer_id,
        customer_name,
        segment,

        COUNT(DISTINCT order_id) AS total_orders,

        COUNT(*) AS total_order_lines,

        ROUND(SUM(sales), 2) AS total_sales,

        ROUND(SUM(profit), 2) AS total_profit,

        ROUND(
            SUM(profit) / NULLIF(SUM(sales), 0) * 100,
            2
        ) AS profit_margin_percentage,

        ROUND(
            SUM(sales) / COUNT(DISTINCT order_id),
            2
        ) AS average_order_value

    FROM superstore_sales

    GROUP BY
        customer_id,
        customer_name,
        segment
)

SELECT
    customer_id,
    customer_name,
    segment,
    total_orders,
    total_sales,
    total_profit,
    profit_margin_percentage,
    average_order_value,

    DENSE_RANK() OVER (
        ORDER BY total_sales DESC
    ) AS sales_rank,

    DENSE_RANK() OVER (
        ORDER BY total_profit DESC
    ) AS profit_rank

FROM customer_summary

ORDER BY total_sales DESC

LIMIT 20;




-- High-Sales, Loss-Making Customer Analysis

SELECT
    customer_id,
    customer_name,
    segment,

    COUNT(DISTINCT order_id) AS total_orders,

    ROUND(SUM(sales), 2) AS total_sales,

    ROUND(SUM(profit), 2) AS total_profit,

    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin_percentage

FROM superstore_sales

GROUP BY
    customer_id,
    customer_name,
    segment

HAVING
    SUM(sales) > 10000
    AND SUM(profit) < 0

ORDER BY total_profit ASC;