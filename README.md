# Does Internal Consistency Reflect Shared Construct Variance or Response Pattern?
### A Simulation Study of Cronbach’s Alpha and McDonald’s Omega

**Author:** Valentine Joseph Owan  

---
## 📌 Overview
This project investigates a long-standing assumption in measurement theory that internal consistency indices reflect the extent to which items measure a common underlying construct. In practice, however, these indices may also be influenced by how respondents answer items, including systematic response patterns such as acquiescence, extreme responding, or inconsistency.

To examine this issue, a Monte Carlo simulation study was conducted to evaluate the behaviour of two widely used reliability coefficients, Cronbach’s Alpha and McDonald’s Omega, under a range of controlled conditions.

The simulation varies four key factors:

Sample size (from very small to large samples)
Scale length (number of items)
Data distribution (normal, skewed, and heavy-tailed)
Response patterns (consistent, acquiescent, extreme, and inconsistent responding)

By systematically manipulating these conditions, the study evaluates how internal consistency estimates behave when underlying assumptions are met versus when they are violated.

The results provide evidence on whether reliability coefficients primarily reflect shared construct variance or are partly driven by response behaviour. The project also compares the stability and sensitivity of alpha and omega under different conditions.

All simulation code, raw data, and full results are provided to ensure transparency and reproducibility. Selected results are used in the accompanying manuscript for clarity, while the complete dataset is available in this repository.

---

## 🎯 Objectives

The study addresses the following questions:

1. To what extent are internal consistency estimates influenced by response patterns (consistent, acquiescent, extreme, inconsistent)?
2. How do Cronbach’s alpha and McDonald’s omega compare under identical conditions?
3. How does sample size affect the stability of reliability estimates?
4. What is the effect of data distribution on reliability estimates?
5. How does scale length influence internal consistency?
6. How do these factors jointly affect reliability estimates?

---

## 🧪 Method Summary

Monte Carlo simulation was used to generate item-level data under controlled conditions.

### Simulation design includes:

- Sample sizes ranging from **10 to 5000**
- Scale lengths of **3, 10, and 20 items**
- Data distributions:
  - Normal  
  - Skewed  
  - Heavy-tailed  
- Response patterns:
  - Consistent responding  
  - Acquiescent responding  
  - Extreme responding  
  - Inconsistent responding  

For each condition, multiple replications were performed, and both reliability indices were computed.

---

---

## ▶️ How to Reproduce the Study

### Step 1: Run the simulation
run_simulation.R


This will generate:

- `results_raw.csv` (complete simulation output)

---

### Step 2: Run the analysis
run_analysis.R


This will generate:

- Summary datasets  
- Objective-specific tables  
- Figures for interpretation  

---

## 📊 Data and Outputs

### 🔹 Raw Data
- `results_raw.csv`  
Contains all simulation replications across conditions.

---

### 🔹 Full Results (Primary Data for Transparency)
Located in the `outputs/` folder:

- Full tables for each objective (Obj1–Obj6)  
- Complete condition-level summaries  

These files contain the **entire set of simulation outcomes** and are intended for full transparency and reproducibility.

---

### 🔹 Reduced Results (Used in Manuscript)

For clarity and readability, the manuscript reports **selected representative conditions** rather than the full dataset.

These reduced tables are derived from the full results and are not separately stored in this repository.

---

## 📈 Key Findings (Summary)

The simulation indicates that:

- Internal consistency estimates are sensitive to response patterns  
- Inconsistent responding substantially reduces reliability estimates  
- McDonald’s omega tends to produce slightly higher and more stable estimates than Cronbach’s alpha  
- Small sample sizes and short scales produce unstable estimates  
- Scale length has a strong positive effect on reliability  
- Data distribution has a modest but noticeable effect  

---

## 🔍 Reproducibility

All results reported in this study can be reproduced using the provided scripts. The inclusion of full simulation outputs ensures complete transparency.

---

## 📌 Notes

- The repository includes full simulation outputs due to the large number of conditions examined  
- Users interested in specific conditions can extract and analyse subsets of the data  
- The workflow is designed to separate computation (simulation) from interpretation (analysis)

---

## 📬 Contact

**Valentine Joseph Owan**  
For questions, collaboration, or feedback, please reach out.

---

## 📄 License

This project is provided for academic and research purposes.
