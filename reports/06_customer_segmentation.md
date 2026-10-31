# SQL Analysis 06: Customer Segmentation and Purchasing Behaviour

## Business Questions

1. Which customer segment generates the highest sales and profit?
2. Which segment has the highest profit margin?
3. Who are the company's highest-value customers based on observed sales and profit?
4. Are the customers generating the most sales also generating the most profit?
5. Which high-sales customers are generating negative overall profit?

## 1. Customer Segment Performance

| Segment | Customers | Orders | Sales | Profit | Profit Margin |
|---|---:|---:|---:|---:|---:|
| Consumer | 409 | 2,586 | $1,161,401.35 | $134,119.21 | 11.55% |
| Corporate | 236 | 1,514 | $706,146.37 | $91,979.13 | 13.03% |
| Home Office | 148 | 909 | $429,371.78 | $60,310.74 | 14.05% |

### Segment Insights

- Consumer generates the highest sales and absolute profit.
- Home Office has the highest profit margin at 14.05%.
- Corporate generates the highest sales per customer at $2,992.15.
- Consumer contributes the largest customer base and order volume.

## 2. Individual Customer Performance

### Top Customers by Sales

| Customer | Sales | Profit | Sales Rank | Profit Rank |
|---|---:|---:|---:|---:|
| Sean Miller | $25,043.05 | -$1,980.74 | 1 | 786 |
| Tamara Chand | $19,052.22 | $8,981.32 | 2 | 1 |
| Raymond Buch | $15,117.34 | $6,976.10 | 3 | 2 |
| Tom Ashbrook | $14,595.62 | $4,703.79 | 4 | 6 |
| Adrian Barton | $14,473.57 | $5,444.81 | 5 | 5 |

### Customer Insights

Sean Miller has the highest total sales among all customers but ranks 786th in profit.

Tamara Chand generates the highest total profit of $8,981.32 and has the highest profit ranking.

Raymond Buch is another strong customer, generating $6,976.10 in profit.

These results demonstrate that customer revenue and customer profitability are different performance measures.

## 3. High-Sales, Loss-Making Customers

Using an exploratory sales threshold of $10,000, two customers satisfy both conditions: total sales above $10,000 and negative total profit.

| Customer | Segment | Orders | Sales | Profit | Profit Margin |
|---|---|---:|---:|---:|---:|
| Sean Miller | Home Office | 5 | $25,043.05 | -$1,980.74 | -7.91% |
| Becky Martin | Consumer | 4 | $11,789.63 | -$1,659.96 | -14.08% |

Combined results:

- Total sales: $36,832.68
- Total loss: $3,640.70
- Combined profit margin: approximately -9.89%.

### Business Insights

1. Sean Miller generates the highest customer-level sales but records negative total profit.
2. Becky Martin also generates substantial sales while recording a negative overall profit.
3. Both customers should be investigated at the order and product level to understand the causes of their losses.
4. These findings demonstrate why customer profitability should be considered alongside revenue.

## 4. SQL Concepts Used

- `COUNT(*)` for counting transaction records.
- `COUNT(DISTINCT)` for counting unique customers and orders.
- `SUM()` for calculating total sales and profit.
- `ROUND()` for formatting calculated values.
- `NULLIF()` for division-by-zero protection.
- `GROUP BY` for customer and segment aggregation.
- CTEs using `WITH` for intermediate customer summaries.
- `DENSE_RANK()` for customer ranking.
- `OVER()` for defining window-function calculations.
- `HAVING` for filtering aggregated customer groups.
- `AND` for combining multiple conditions.
- `ORDER BY` and `LIMIT` for sorting and selecting the top 20 customers.

## 5. Preliminary Business Recommendations

- Investigate the order-level profitability of Sean Miller and Becky Martin.
- Examine product combinations and discount patterns associated with their losses.
- Study profitable customers such as Tamara Chand and Raymond Buch.
- Evaluate the Consumer segment's large revenue contribution alongside its comparatively lower profit margin.
- Investigate the high profit margin of the Home Office segment.

These are areas for further analysis. The underlying reasons for individual customer losses have not yet been established.

## Conclusion

Consumer generates the highest overall sales and profit, while Home Office has the highest segment-level profit margin.

At the individual customer level, the highest-sales customer is not necessarily the most profitable. Sean Miller generates the most sales but records a loss, while Tamara Chand generates the highest customer-level profit.

Customer revenue, order volume and profitability should therefore be evaluated together.

**SQL Script:** `sql/06_customer_segmentation.sql`