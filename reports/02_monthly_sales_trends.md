# SQL Analysis 02: Monthly Sales and Profit Trends

## Business Question

How does the company's sales performance and profitability change month by month across the period 2014–2017?

## Analysis Objectives

- Measure monthly sales and profit.
- Compare monthly order volumes.
- Calculate monthly profit margins.
- Identify the strongest and weakest months.
- Investigate potential seasonal trends.

## Key Findings

| Metric | Finding |
|---|---|
| Highest monthly sales | November 2017: $118,447.83 |
| Highest monthly profit | December 2016: $17,885.31 |
| Lowest monthly profit | January 2015: -$3,281.01 |
| Highest monthly profit margin | October 2016: 27.21% |
| Lowest monthly profit margin | January 2015: -18.05% |

## Business Insights

### 1. Highest Sales Month

November 2017 generated the highest monthly sales of $118,447.83 across 261 orders.

### 2. Highest Profit Month

December 2016 generated the highest monthly profit of $17,885.31.

This demonstrates that the month with the highest sales does not necessarily generate the highest profit.

### 3. Loss-Making Months

Two months recorded negative overall profit:

- July 2014: -$841.48
- January 2015: -$3,281.01

These months should be investigated further to identify potentially loss-making products, excessive discounts, or unfavourable product mixes.

### 4. Strong Profitability

October 2016 recorded a profit margin of 27.21%, the highest among the 48 monthly records.

This indicates that the company generated comparatively strong profit relative to its sales during that month.

## SQL Concepts Used

- `YEAR()` to extract the year.
- `MONTH()` to extract the numerical month.
- `MONTHNAME()` to retrieve the month name.
- `SUM()` to calculate total monthly sales and profit.
- `COUNT(DISTINCT)` to count unique monthly orders.
- `ROUND()` to format calculated metrics.
- `NULLIF()` to prevent division by zero.
- `GROUP BY` to aggregate transactions by year and month.
- `ORDER BY` to arrange the results chronologically.

## Preliminary Conclusion

The company's monthly performance varies considerably across the four-year period.

The highest-sales month was not the highest-profit month, demonstrating the importance of monitoring profitability alongside revenue.

Some months experienced negative profitability and require further investigation.

The current analysis identifies individual monthly performance differences but does not establish recurring seasonal patterns. Additional comparisons across the same calendar months over multiple years are required.

## Next Investigation

- Compare annual sales and profit growth.
- Identify the most profitable product categories and sub-categories.
- Investigate regional sales performance.
- Examine the impact of discounts on profitability.

**SQL Script:** `sql/02_monthly_sales_trends.sql`