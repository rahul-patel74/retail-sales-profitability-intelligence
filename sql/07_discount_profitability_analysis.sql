USE retail_sales_analytics;

-- Analysis 07: Discount Effectiveness and Profitability

SELECT
    discount,

    COUNT(*) AS total_order_lines,

    COUNT(DISTINCT order_id) AS total_orders,

    ROUND(SUM(sales), 2) AS total_sales,

    ROUND(SUM(profit), 2) AS total_profit,

    ROUND(AVG(profit), 2) AS average_profit_per_line,

    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin_percentage,

    SUM(
        CASE
            WHEN profit < 0 THEN 1
            ELSE 0
        END
    ) AS loss_making_rows,

    ROUND(
        SUM(
            CASE
                WHEN profit < 0 THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS loss_making_percentage

FROM superstore_sales

GROUP BY discount

ORDER BY discount ASC;




-- Discount Impact Across Product Categories

SELECT
    category,
    discount,

    COUNT(*) AS total_order_lines,

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
    ) AS loss_making_rows,

    ROUND(
        SUM(
            CASE
                WHEN profit < 0 THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS loss_making_percentage

FROM superstore_sales

GROUP BY
    category,
    discount

ORDER BY
    category,
    discount;