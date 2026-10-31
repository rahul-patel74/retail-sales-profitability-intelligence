# SQL Analysis 07: Discount Effectiveness and Profitability

## Business Questions

1. How do different discount levels affect overall profitability?
2. Which discount levels generate positive or negative profit?
3. Does discount effectiveness vary across product categories?
4. Which discount levels have the highest percentage of loss-making transactions?

## 1. Overall Discount Analysis

### Key Findings

- Zero-discount transactions generated $320,987.60 in total profit with a profit margin of 29.51%.
- At 20% discount, the business generated $90,337.31 in profit.
- At 30% discount, the business recorded a loss of $10,357.22.
- At 70% discount, the business recorded its largest discount-level loss of $40,075.36.
- Every recorded transaction at 50%, 60%, 70% and 80% discounts had negative profit.

## 2. Discount Impact Across Product Categories

### Furniture

| Discount | Total Sales | Total Profit | Profit Margin |
|---|---:|---:|---:|
| 0% | $256,025.27 | $58,133.08 | 22.71% |
| 10% | $46,634.25 | $7,111.01 | 15.25% |
| 15% | $27,558.52 | $1,418.99 | 5.15% |
| 20% | $216,631.02 | $6,265.95 | 2.89% |
| 30% | $99,188.98 | -$10,683.26 | -10.77% |
| 40% | $45,614.41 | -$16,187.40 | -35.49% |
| 50% | $20,983.47 | -$12,871.20 | -61.34% |

Furniture shows a strong deterioration in aggregate profitability at higher discount levels.

### Office Supplies

| Discount | Total Sales | Total Profit | Profit Margin |
|---|---:|---:|---:|
| 0% | $442,150.00 | $130,506.11 | 29.52% |
| 10% | $4,324.15 | $1,086.08 | 25.12% |
| 20% | $233,049.74 | $38,038.75 | 16.32% |
| 70% | $22,559.39 | -$16,601.10 | -73.59% |
| 80% | $16,963.76 | -$30,539.04 | -180.03% |

At 70% and 80% discounts, all recorded Office Supplies order lines were loss-making.

### Technology

| Discount | Total Sales | Total Profit | Profit Margin |
|---|---:|---:|---:|
| 0% | $389,733.20 | $132,348.42 | 33.96% |
| 10% | $3,410.96 | $832.08 | 24.39% |
| 20% | $314,913.62 | $46,032.61 | 14.62% |
| 30% | $3,756.31 | $326.04 | 8.68% |
| 40% | $70,803.38 | -$6,869.65 | -9.70% |
| 50% | $37,935.07 | -$7,635.23 | -20.13% |
| 70% | $15,601.51 | -$19,579.32 | -125.50% |

Technology remains profitable at 30% discount in the observed data, but records negative overall profit at higher discount levels.

## 3. Key Business Insights

### 1. Zero-Discount Transactions Are Highly Profitable

All three product categories generated positive aggregate profit without discounts. Technology recorded the strongest margin at 33.96%.

### 2. Furniture Is Vulnerable to Higher Discounts

Furniture's profit margin falls to 2.89% at a 20% discount and becomes negative at a 30% discount.

Tables and Bookcases require additional product-level investigation.

### 3. Office Supplies Experiences Severe High-Discount Losses

Every recorded transaction at 70% and 80% discounts was loss-making. The 80% discount group generated a loss of $30,539.04.

### 4. Discount Effects Differ Across Product Categories

Technology remained profitable at 30% discount, unlike Furniture. However, the Technology group contained only five records at that discount level, limiting the strength of the observation.

## 4. SQL Concepts Used

- `COUNT(*)` for counting order-line records.
- `COUNT(DISTINCT)` for counting unique orders.
- `SUM()` for total sales and profit.
- `AVG()` for average profit per order line.
- `ROUND()` for numerical formatting.
- `NULLIF()` for division-by-zero protection.
- `CASE WHEN` for conditional logic.
- Conditional aggregation for counting loss-making transactions.
- `GROUP BY` for discount-level and category-discount analysis.
- `ORDER BY` for sorting discount levels.
- Percentage calculations for profitability and loss rates.

## 5. Preliminary Business Recommendations

- Investigate the pricing and discounting of loss-making Furniture products.
- Review high-discount Office Supplies transactions.
- Investigate the profitability of Technology products at higher discount levels.
- Evaluate discount policies at product and sub-category levels rather than applying identical assumptions to every category.
- Assess discount effectiveness using both sales volume and profit contribution.

These recommendations identify areas for investigation. The analysis establishes associations, not proof that discounts alone caused losses. Different sample sizes and product mixes must also be considered.

## Conclusion

Discount-level analysis reveals substantial differences in profitability across the dataset.

Zero-discount transactions are profitable across all three categories, while higher discounts frequently coincide with negative profitability.

Furniture and Office Supplies show particularly weak results at several high discount levels. Technology demonstrates a somewhat different pattern.

Further product-level and cost analysis is needed before recommending specific pricing changes.

**SQL Script:** `sql/07_discount_profitability_analysis.sql`