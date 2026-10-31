# SQL Analysis 03: Yearly Sales and Profit Growth

## Business Question

Is the company growing year after year, and is its profit growing at the same rate as its sales?

## Key Findings

| Year | Annual Sales | Annual Profit | Profit Margin |
|---|---:|---:|---:|
| 2014 | $483,966.13 | $49,556.03 | 10.24% |
| 2015 | $470,532.51 | $61,618.60 | 13.10% |
| 2016 | $609,205.60 | $81,795.17 | 13.43% |
| 2017 | $733,215.26 | $93,439.27 | 12.74% |

## Year-over-Year Growth

| Year | Sales Growth | Profit Growth |
|---|---:|---:|
| 2014 | N/A | N/A |
| 2015 | -2.78% | 24.34% |
| 2016 | 29.47% | 32.74% |
| 2017 | 20.36% | 14.24% |

## Business Insights

### 1. Sales and Profit Performance in 2015

Sales declined by 2.78%, while profit increased by 24.34%. This indicates that profitability improved despite a decline in revenue. Further investigation is required to understand the contributing factors.

### 2. Strong Growth in 2016

The company recorded its strongest annual growth in 2016, with sales increasing by 29.47% and profit increasing by 32.74%.

Profit grew faster than revenue, indicating improved profitability during this period.

### 3. Highest Annual Performance in 2017

The company recorded its highest annual sales of $733,215.26 and profit of $93,439.27 in 2017.

However, its growth rates were lower than in 2016.

### 4. Declining Profit Margin in 2017

The overall profit margin decreased from 13.43% in 2016 to 12.74% in 2017.

This suggests that profit did not grow as quickly as sales. Product mix, discounting and other business factors should be investigated further.

## SQL Concepts Used

- `YEAR()` for extracting the year.
- `COUNT(DISTINCT)` for counting unique orders.
- `SUM()` for calculating annual sales and profit.
- `ROUND()` for formatting numerical results.
- `NULLIF()` for handling division-by-zero cases.
- `GROUP BY` for annual aggregation.
- CTEs using `WITH` for organising intermediate results.
- `LAG()` for retrieving previous-year values.
- `OVER()` for defining the window function.
- `ORDER BY` for chronological ordering.
- Year-over-year percentage growth calculations.

## Preliminary Conclusion

The company experienced overall growth between 2014 and 2017, with 2017 generating the highest absolute sales and profit.

However, 2016 was the strongest year in terms of growth rates. In 2017, both sales and profit growth slowed, and the profit margin declined.

Management should investigate the factors behind this change before making pricing or discounting decisions.

## Next Investigation

- Which product categories and sub-categories generate the highest profit?
- Which products generate losses?
- Which regions contribute most to business performance?
- How do discounts affect profitability?

**SQL Script:** `sql/03_yearly_sales_profit_growth.sql`