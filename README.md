# Layoffs Data Exploratory Data Analysis (EDA) Project

## Project Overview
This project performs Exploratory Data Analysis (EDA) on the cleaned layoffs dataset using SQL. The goal is to uncover patterns, trends, and key insights about layoffs across companies, industries, countries, and time periods.

## Dataset
- [Kaggle: Layoffs 2022](https://www.kaggle.com/datasets/swaptr/layoffs-2022)

## Key Insights Discovered

### 1. Time Period
- **Start Date:** March 2020
- **End Date:** March 2023

### 2. Maximum Layoffs
- **Largest single layoff:** 12,000 employees
- **Highest percentage laid off:** 100% (entire company)

### 3. Companies with 100% Layoffs
Many companies laid off all employees. The top 3 with the most funding:
1. **Katerra** – $1.6B raised – 2,434 laid off
2. **Quibi** – $1.8B raised – Full shutdown
3. **Breather** – $131M raised – 120 laid off

---

## Analysis Breakdown

### By Company
**Top 5 Companies by Total Layoffs:**

| Company | Total Laid Off | Funds Raised |
|---------|---------------|--------------|
| Amazon | 18,150 | $108M |
| Google | 12,000 | $26M |
| Meta | 11,000 | $26B |
| Microsoft | 10,000 | $1M |
| Salesforce | 9,000 | $65M |

---

### By Country
**Top 5 Countries by Total Layoffs:**

| Country | Total Laid Off | Funds Raised |
|---------|---------------|--------------|
| United States | ~177,000 | ~$67B |
| India | ~17,000 | ~$21B |
| Netherlands | ~6,400 | ~$400M |
| Germany | ~5,800 | ~$12B |
| Sweden | ~3,900 | ~$3.2B |

---

### By Industry
**Top 5 Industries by Total Layoffs:**

| Industry | Total Laid Off | Funds Raised |
|----------|---------------|--------------|
| Consumer | ~41,000 | ~$31B |
| Retail | ~28,000 | ~$17B |
| Other | ~21,000 | ~$4.6B |
| Transportation | ~19,000 | ~$35B |
| Finance | ~17,000 | ~$21B |

---

### By Stage (Company Maturity)
**Top 5 Stages by Layoffs:**

| Stage | Total Laid Off |
|-------|---------------|
| Post-IPO | ~47,000 |
| Unknown | ~14,000 |
| Series D | ~7,000 |
| Acquired | ~7,000 |
| Series C | ~5,500 |

---

### By Year
**Annual Layoffs Trend:**

| Year | Total Laid Off |
|------|---------------|
| 2023 | ~105,000 |
| 2022 | ~105,000 |
| 2021 | ~14,000 |
| 2020 | ~77,000 |

---

### Top 5 Layoff Dates in the US
| Date | Layoffs |
|------|---------|
| Jan 2023 | 12,000 |
| Nov 2022 | 11,000 |
| Jan 2022 | 10,000 |
| Jan 2020 | 8,000 |
| Mar 2020 | 7,000 |

### Top 3 Industries in the US by Layoffs
| Industry | Layoffs |
|----------|---------|
| Consumer | ~35,000 |
| Retail | ~22,000 |
| Transportation | ~13,000 |

---

## Advanced Analysis

### Monthly Rolling Total
A rolling total of layoffs over time shows the cumulative impact:

| Month | Monthly Layoffs | Rolling Total |
|-------|----------------|---------------|
| 2020-03 | ~10,000 | 10,000 |
| 2020-04 | ~8,000 | 18,000 |
| … | … | … |
| 2023-03 | ~5,000 | ~180,000 |

### Top 4 Companies by Layoffs per Year

**2020:**
1. Uber – 3,700
2. Groupon – 2,800
3. Peloton – 2,800
4. Katerra – 2,434

**2021:**
1. Bytedance – 1,800
2. WhiteHat Jr – 1,800
3. Instacart – 1,877
4. Zillow – 2,000

**2022:**
1. Meta – 11,000
2. Amazon – 10,000
3. Twitter – 3,700
4. Carvana – 2,500

**2023:**
1. Amazon – 8,000
2. Salesforce – 8,000
3. Ericsson – 8,500
4. Dell – 6,650

---

## Tools Used
- MySQL (Window Functions, CTEs, Aggregate Functions, Date Functions)

## Conclusion
Key findings from the EDA:
- Layoffs spiked dramatically in 2022–2023
- The US dominates global layoffs by a wide margin
- Tech and consumer-facing companies were hit hardest
- Post-IPO companies had the highest layoff counts
- Amazon, Google, Meta, and Microsoft led in total layoffs

The data is now ready for visualization and further analysis.
