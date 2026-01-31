# Oscar-Winners-Statistical-Analysis 
Statistical analysis of Academy Award winners (1929–2021) exploring the relationship between gender, age, and birth season using R and R Commander.

## Project Overview
This project performs an exploratory data analysis (EDA) on a dataset of 196 Academy Award winners for Best Actor and Best Actress. The study utilizes categorical and quantitative statistical methods to determine if factors such as **birth season** and **age at the time of winning** are independent of or dependent on **gender**.

## Key Research Questions
1. Is the birth season of an Oscar winner dependent on their gender?
2. Do age distributions differ significantly between Best Actor and Best Actress winners?
3. Are there significant outliers (unusually old or young winners) in the dataset?

## Technologies Used
* **R (v4.x)**
* **R Commander (Rcmdr)**
* **Statistical Methods:** Chi-Square Test of Independence, Histograms, Boxplots, 1.5*IQR Outlier Detection.

## Dataset Description
The dataset includes:
* `GENDER`: (f) Female, (m) Male
* `YEAR`: Year of the award
* `BY`: Birth Year
* `AGE`: Calculated variable (`YEAR - BY - 1`)
* `SEASON`: Categorical variable based on birth month

## Findings Summary

### 1. Categorical Analysis: Birth Season
* **Method:** Contingency table and Chi-Square test.
* **Result:** With a p-value of ~0.079, we fail to reject the null hypothesis. Birth season is **independent** of gender.

### 2. Quantitative Analysis: Age
* **Method:** Histograms and Side-by-Side Boxplots.
* **Result:** Age is **highly dependent** on gender. 
    * **Female Median Age:** 33.5 years
    * **Male Median Age:** 43.0 years
* **Shape:** Both distributions are **right-skewed**, indicating that younger performers win more frequently, with a "tail" of older winners.



### 3. Outliers
Using the $1.5 \times IQR$ criterion, several high-age outliers were identified:
* **Females:** Winners older than 60.5 years (e.g., Jessica Tandy, age 80).
* **Males:** Winners older than 68.0 years (e.g., Anthony Hopkins, age 83).

## Conclusion
The analysis confirms a significant "age gap" in Hollywood: female winners tend to be nearly a decade younger than their male counterparts. However, biological factors like birth season show no correlation with the likelihood of winning an award across genders.

---
*This analysis was completed as part of a Statistical Lab exploring data visualization and inference.*
