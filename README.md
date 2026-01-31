# Oscar Winners Statistical Analysis (1929–2021)

## Project Overview
This project performs an exploratory data analysis (EDA) on a dataset of 196 Academy Award winners for Best Actor and Best Actress. The study utilizes categorical and quantitative statistical methods to determine if factors such as **birth season** and **age at the time of winning** are influenced by **gender**.

## Repository Contents
* `Lab1-Data.txt`: The raw dataset containing winner names, movies, birth years, and award years.
* `RCommander Lab 1 Script.R`: The complete R script used to generate all tables, chi-square tests, histograms, and boxplots.

## How to Run the Analysis
To replicate the findings of this lab:
1.  **Install R and R Commander:** Ensure you have R installed, and the `Rcmdr` package loaded.
2.  **Load the Data:** Open R and import `Lab1-Data.txt`.
    * *Note:* You may need to update the file path in the first line of the script to match the location of the data file on your computer.
3.  **Run the Script:** Open `RCommander Lab 1 Script.R` in R or R Commander and run the code to generate the statistical outputs.

## Key Research Questions
1. Is the birth season of an Oscar winner dependent on their gender?
2. Do age distributions differ significantly between Best Actor and Best Actress winners?

## Findings Summary

### 1. Categorical Analysis: Birth Season
* **Method:** Chi-Square test of independence.
* **Result:** With a p-value of **0.079**, we fail to reject the null hypothesis. Birth season is **independent** of gender.

### 2. Quantitative Analysis: Age
* **Method:** Side-by-Side Boxplots and Numerical Summaries.
* **Result:** Age is **highly dependent** on gender. 
    * **Female Median Age:** 33.5 years
    * **Male Median Age:** 43.0 years
* **Shape:** Both distributions are **right-skewed**, indicating that younger performers win more frequently, though male winners peak significantly later than female winners.



### 3. Outliers (1.5 * IQR Criterion)
Mathematical outlier detection identified the following "fences":
* **Females:** Winners older than **60.5** years are outliers.
* **Males:** Winners older than **68.0** years are outliers.
* *Example Outliers:* Jessica Tandy (80) and Anthony Hopkins (83).

## Conclusion
The analysis confirms a significant "age gap" in Hollywood: female winners tend to win nearly a decade earlier in life than their male counterparts. However, birth season shows no correlation with winning, suggesting it is a random factor.

---
*This analysis was completed as part of a Statistical Lab exploring data visualization and inference.*
