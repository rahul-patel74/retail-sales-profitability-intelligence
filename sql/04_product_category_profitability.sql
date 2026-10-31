USE retail_sales_analytics;

-- Analysis 04: Product and Category Profitability

SELECT
    category,
    sub_category,

    COUNT(*) AS total_order_lines,

    COUNT(DISTINCT order_id) AS total_orders,

    SUM(quantity) AS total_units_sold,

    ROUND(SUM(sales), 2) AS total_sales,

    ROUND(SUM(profit), 2) AS total_profit,

    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin_percentage,

    SUM(
        CASE
            WHEN profit < 0 THEN 1
            ELSE 0
        END
    ) AS loss_making_rows

FROM superstore_sales

GROUP BY
    category,
    sub_category

ORDER BY
    total_profit ASC;



SELECT
    category,

    COUNT(*) AS total_order_lines,

    COUNT(DISTINCT order_id) AS total_orders,

    SUM(quantity) AS total_units_sold,

    ROUND(SUM(sales), 2) AS total_sales,

    ROUND(SUM(profit), 2) AS total_profit,

    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin_percentage

FROM superstore_sales

GROUP BY category

ORDER BY total_profit DESC;