# SQL Analysis 05: Regional and State-Level Sales & Profitability

## Business Questions

1. Which geographical regions generate the highest sales and profit?
2. Which states contribute most to overall profitability?
3. Which states are generating substantial sales but operating at a loss?

## 1. Regional Performance

| Region | Total Sales | Total Profit | Profit Margin |
|---|---:|---:|---:|
| West | $725,457.82 | $108,418.45 | 14.94% |
| East | $678,499.87 | $91,534.84 | 13.49% |
| South | $391,721.91 | $46,749.43 | 11.93% |
| Central | $501,239.89 | $39,706.36 | 7.92% |

### Regional Insights

- West generates the highest sales and profit, with a profit margin of 14.94%.
- Central generates more sales than South but produces less profit.
- Central has the lowest regional profit margin at 7.92%.
- The findings demonstrate why revenue and profitability should be evaluated separately.

## 2. State-Level Performance

### Strongest States

| State | Total Sales | Total Profit | Profit Margin |
|---|---:|---:|---:|
| California | $457,687.63 | $76,381.39 | 16.69% |
| New York | $310,876.27 | $74,038.55 | 23.82% |
| Washington | $138,641.27 | $33,402.65 | 24.09% |

California generates the highest state-level sales and profit in the dataset.

California and New York together contribute approximately 52.52% of total company profit.

### Loss-Making States

Ten states record negative overall profit:

- Texas
- Ohio
- Pennsylvania
- Illinois
- North Carolina
- Colorado
- Tennessee
- Arizona
- Florida
- Oregon

Texas has the largest state-level loss of $25,729.36.

## 3. High-Sales, Loss-Making States

Using an exploratory sales threshold of $50,000, six states satisfy both conditions: sales above $50,000 and negative total profit.

| State | Region | Total Sales | Total Profit |
|---|---|---:|---:|
| Texas | Central | $170,188.05 | -$25,729.36 |
| Ohio | East | $77,976.76 | -$16,959.32 |
| Pennsylvania | East | $116,511.91 | -$15,559.96 |
| Illinois | Central | $80,166.10 | -$12,607.89 |
| North Carolina | South | $55,603.16 | -$7,490.91 |
| Florida | South | $89,473.71 | -$3,399.30 |

### Business Insights

1. Texas has substantial sales but the largest state-level loss, making it a priority for further investigation.
2. Pennsylvania and Ohio also show significant losses despite generating considerable revenue.
3. Central and East each have two states in the high-sales, loss-making group.
4. These states should be investigated for product mix, discount patterns and other potential profitability issues.

The observed losses do not establish their underlying causes.

## 4. SQL Concepts Used

- `COUNT(*)` for counting transaction records.
- `COUNT(DISTINCT)` for counting unique orders and customers.
- `SUM()` for calculating sales, profit and quantities.
- `ROUND()` for numerical formatting.
- `NULLIF()` for division-by-zero protection.
- `GROUP BY` for regional and state-level aggregation.
- `CASE WHEN` for performance classification.
- `HAVING` for filtering aggregated groups.
- `AND` for combining multiple conditions.
- `ORDER BY ASC` and `ORDER BY DESC` for sorting results.

## 5. Preliminary Business Recommendations

- Investigate Texas, Ohio and Pennsylvania to understand the causes of their substantial losses.
- Examine Central region profitability despite its relatively high sales.
- Investigate pricing and discount patterns in loss-making states.
- Study the strategies and product mix of high-performing states such as California and New York.
- Evaluate actual profit contribution alongside profit margin and transaction volume.

These recommendations are areas for further investigation rather than conclusions about the causes of losses.

## Conclusion

West is the strongest overall region, while Central has the weakest regional profit margin.

California and New York are major contributors to overall company profit. However, ten states record losses, including six states that generate more than $50,000 in sales while still reporting negative overall profit.

Further product-level and discount-level analysis is required to identify the factors affecting geographical profitability.

**SQL Script:** `sql/05_regional_sales_profitability.sql`