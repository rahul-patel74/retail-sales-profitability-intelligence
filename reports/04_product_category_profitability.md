# SQL Analysis 04: Product and Category Profitability

## Business Question

Which product categories and sub-categories generate the highest sales and profit, and which are contributing to weak profitability?

## Category-Level Performance

| Category | Total Sales | Total Profit | Profit Margin |
|---|---:|---:|---:|
| Technology | $836,154.03 | $145,454.95 | 17.40% |
| Office Supplies | $719,047.03 | $122,490.80 | 17.04% |
| Furniture | $741,718.42 | $18,463.33 | 2.49% |

## Sub-Category Findings

### Loss-Making Sub-Categories

| Sub-Category | Sales | Profit | Profit Margin |
|---|---:|---:|---:|
| Tables | $206,965.53 | -$17,725.48 | -8.56% |
| Bookcases | $114,880.00 | -$3,472.56 | -3.02% |
| Supplies | $46,673.54 | -$1,189.10 | -2.55% |

### High-Profit Sub-Categories

| Sub-Category | Total Profit | Profit Margin |
|---|---:|---:|
| Copiers | $55,617.82 | 37.20% |
| Phones | $44,515.73 | 13.49% |
| Accessories | $41,936.64 | 25.05% |
| Paper | $34,053.57 | 43.39% |

## Key Business Insights

### 1. Technology Leads Overall Profitability

Technology generated $145,454.95 in profit, contributing approximately 50.79% of total company profit. It also achieved a profit margin of 17.40%.

### 2. Furniture Has Weak Profitability

Furniture generated $741,718.42 in sales but only $18,463.33 in profit, resulting in a margin of 2.49%.

Despite generating more sales than Office Supplies, Furniture contributed substantially less profit.

### 3. Tables Are the Biggest Sub-Category Concern

Tables generated $206,965.53 in sales but recorded a loss of $17,725.48. Its negative profit margin of 8.56% makes it the most concerning sub-category.

### 4. Copiers Generate the Highest Sub-Category Profit

Copiers generated $55,617.82 in profit with a profit margin of 37.20%, despite having only 68 order-line records.

### 5. Binders Have Many Loss-Making Transactions

Binders recorded 613 loss-making rows, but still generated positive overall profit of $30,221.76.

This highlights the difference between transaction-level losses and overall sub-category profitability.

## SQL Concepts Used

- `COUNT(*)` for counting order-line records.
- `COUNT(DISTINCT)` for counting unique orders.
- `SUM()` for sales, profit and quantity aggregation.
- `ROUND()` for numerical formatting.
- `NULLIF()` for preventing division by zero.
- `CASE WHEN` for conditional calculations.
- Conditional aggregation for counting loss-making records.
- `GROUP BY` with multiple columns for sub-category analysis.
- `GROUP BY` with one column for category-level analysis.
- `ORDER BY ASC` and `ORDER BY DESC` for sorting profitability results.

## Preliminary Business Recommendations

- Investigate discounting and pricing strategies for Tables and Bookcases.
- Examine the cost and profitability structure of Furniture.
- Investigate products contributing to repeated transaction-level losses.
- Study successful product groups such as Copiers and Paper.
- Evaluate profitability alongside sales when making product decisions.

These recommendations identify areas for investigation; the underlying causes have not yet been established.

## Conclusion

Technology is the strongest category in terms of overall profit, while Furniture has relatively weak profitability despite generating substantial sales.

At the sub-category level, Tables, Bookcases and Supplies record negative overall profit. Copiers and Paper demonstrate comparatively strong profitability.

Further analysis of discounts, products and regions is required before making final business recommendations.

**SQL Script:** `sql/04_product_category_profitability.sql`