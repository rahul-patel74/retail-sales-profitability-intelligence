# Retail Sales & Profitability Intelligence

An end-to-end data analytics project focused on understanding retail sales performance, product profitability, customer segments, regional performance, and discount effectiveness using Python, SQL, and Power BI.

## Business Problem

Retail businesses generate large volumes of transaction data, but sales figures alone do not explain overall business performance.

This project aims to analyse retail transaction data to identify profitable and loss-making product categories, understand regional and customer performance, investigate discount patterns, and provide actionable business recommendations.

## Project Objectives

- Analyse overall sales, profit, and profitability trends.
- Identify high-performing and loss-making products.
- Evaluate sales and profit across regions and customer segments.
- Investigate the relationship between discounts and profitability.
- Analyse customer purchasing and order patterns.
- Develop an interactive business intelligence dashboard.
- Translate analytical findings into practical recommendations.

## Dataset

**Dataset:** Sample Superstore

**Source:** [Kaggle - Superstore Sales Dataset](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)

The dataset contains retail order information, including:

- Order and shipping details
- Customer information and segments
- Geographic information
- Product categories and sub-categories
- Sales, quantity, discount, and profit

**Original dataset:** 9,994 rows and 21 columns.

**Cleaned dataset:** 9,993 rows and 21 columns after removing one suspected exact duplicate business record.

The original and processed CSV files are kept locally and are not included in this repository. Refer to the dataset source for access.

## Tools & Technologies

- **Python:** Data manipulation and exploratory data analysis
- **Pandas:** Data inspection and cleaning
- **SQL / MySQL:** Business queries and analytical reporting
- **Power BI:** Interactive dashboards and data visualization
- **Jupyter Notebook:** Analysis and documentation
- **Git & GitHub:** Version control and project publishing

## Project Structure

```text
retail-sales-profitability-intelligence/
│
├── data/
│   ├── raw/                 # Original dataset (not tracked)
│   └── processed/           # Cleaned dataset (not tracked)
│
├── notebooks/
│   ├── 01_data_understanding.ipynb
│   └── 02_data_cleaning.ipynb
│
├── sql/                     # SQL analysis scripts
├── powerbi/                 # Power BI dashboard files
├── reports/                 # Business insights and reports
│
├── .gitignore
└── README.md
```

## Project Workflow

1. Data Understanding
2. Data Cleaning and Validation
3. SQL Business Analysis
4. Exploratory Data Analysis using Python
5. Power BI Dashboard Development
6. Business Insights and Recommendations

## Preliminary Findings

Initial exploration identified several areas worth investigating:

- Approximately 18.72% of transaction rows record negative profit.
- The Tables sub-category records a substantial overall loss.
- Higher discount levels are associated with weaker profitability in several product sub-categories.

These are preliminary observations and will be investigated further through SQL analysis and deeper exploratory analysis.

## Project Status

- [x] Data Understanding
- [x] Data Cleaning and Validation
- [x] SQL Business Analysis
- [ ] Python Exploratory Data Analysis
- [ ] Power BI Dashboard
- [ ] Final Business Recommendations

## How to Use This Project

1. Clone this repository.
2. Download the dataset from the Kaggle source linked above.
3. Place the original CSV inside `data/raw/`.
4. Install the required Python libraries.
5. Open the notebooks in the `notebooks/` directory.
6. Execute the notebooks in numerical order.

Install the initial Python dependencies:

```bash
pip install pandas jupyter
```

Additional dependencies will be documented as the project develops.

## Disclaimer

This project is developed for educational and portfolio purposes. Business findings and recommendations are based on analysis of the provided sample dataset and should not be interpreted as actual company performance.

---

**Project:** Retail Sales & Profitability Intelligence  
**Author:** Rahul Patel