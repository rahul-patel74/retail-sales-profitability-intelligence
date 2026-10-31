USE retail_sales_analytics;

-- Analysis 03: Yearly Sales and Profit Growth

WITH yearly_summary AS (
    SELECT
        YEAR(order_date) AS order_year,

        COUNT(DISTINCT order_id) AS total_orders,

        SUM(sales) AS annual_sales,

        SUM(profit) AS annual_profit,

        ROUND(
            SUM(profit) / NULLIF(SUM(sales), 0) * 100,
            2
        ) AS profit_margin_percentage

    FROM superstore_sales

    GROUP BY YEAR(order_date)
),

yearly_comparison AS (
    SELECT
        order_year,
        total_orders,
        annual_sales,
        annual_profit,
        profit_margin_percentage,

        LAG(annual_sales) OVER (
            ORDER BY order_year
        ) AS previous_year_sales,

        LAG(annual_profit) OVER (
            ORDER BY order_year
        ) AS previous_year_profit

    FROM yearly_summary
)

SELECT
    order_year,
    total_orders,

    ROUND(annual_sales, 2) AS annual_sales,

    ROUND(annual_profit, 2) AS annual_profit,

    profit_margin_percentage,

    ROUND(
        (annual_sales - previous_year_sales)
        / NULLIF(previous_year_sales, 0) * 100,
        2
    ) AS sales_growth_percentage,

    ROUND(
        (annual_profit - previous_year_profit)
        / NULLIF(previous_year_profit, 0) * 100,
        2
    ) AS profit_growth_percentage

FROM yearly_comparison

ORDER BY order_year;