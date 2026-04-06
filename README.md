# Does Internal Consistency Reflect Shared Construct Variance or Response Pattern?
### A Simulation Study of Cronbach’s Alpha and McDonald’s Omega

**Author:** Valentine Joseph Owan  

---

## 📌 Overview

This project presents a large-scale simulation study examining the behaviour of internal consistency estimates under varying measurement conditions. Specifically, the study investigates whether commonly used reliability coefficients reflect true shared construct variance or are influenced by systematic response patterns.

Two widely used indices are examined:

- Cronbach’s Alpha  
- McDonald’s Omega  

The simulation evaluates how these indices behave under different combinations of:

- Sample size  
- Scale length  
- Data distribution  
- Response patterns  

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

## 📂 Project Structure
project/
│
├── run_simulation.R
├── run_analysis.R
├── results_raw.csv
├── README.md
│
├── outputs/
│ ├── Table_Obj1_Response_Full.csv
│ ├── Table_Obj2_Alpha_vs_Omega_Full.csv
│ ├── Table_Obj3_SampleSize_Full.csv
│ ├── Table_Obj3_SampleSize_Summary.csv
│ ├── Table_Obj4_Distribution_Full.csv
│ ├── Table_Obj5_ScaleLength_Full.csv
│ ├── Table_Obj6_JointEffects_Full.csv
│ ├── results_summary.csv
│ ├── Supplementary_FullResults.csv


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