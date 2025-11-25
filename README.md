# **INFO 201 Final Project – Group 2**

**Team Members:**
• [Joseph Chamdani](https://github.com/joechamdani)
• [Winson Teh](https://github.com/win719)
• [Kenneth Wu](https://github.com/kennethwu30)
• [Hanjun Ma](https://github.com/decade3601)

---

## **Project Overview**

This project investigates how the rapid rise of **Large Language Models (LLMs)** relates to trends in the **AI job market**. We combine two Kaggle datasets:

1. **AI Job Salaries (2020–2025)**
2. **Large Language Model Releases (2018–2024)**

Our analysis focuses on four guiding research questions:

1. How does the growth in LLM releases relate to AI job postings from 2020 to 2024?
2. Which AI job roles earn the highest salaries from 2020 to 2025?
3. What companies produce the largest LLMs, and which release the most models?
4. Which countries pay the highest AI salaries when comparing the same role?

---

## **Repository Structure**

```
INFO_201_Final_Project/
│
├── Data/                         # CSV datasets used in the analysis
│   ├── job-salaries.csv
│   └── large-language-models.csv
│
├── Graphs/                       # Output graphs (optional)
│
├── final_code.Rmd                # Full analysis code with all R chunks
├── final_code.html               # Knitted HTML (code visible)
│
├── final_report_group_2.Rmd      # Full written report (no code)
├── final_report_group_2.html     # Knitted HTML final report
│
└── README.md                     # Overview and documentation
```

---

## **How to Run the Project**

### **1. Install Required Packages**

Open RStudio and run:

```r
install.packages("tidyverse")
```

### **2. Open the Code File**

Open:

```
final_code.Rmd
```

### **3. Knit the Document**

Use the Knit button in RStudio to produce:

* **final_code.html** — full analysis with code visible
* **final_report_group_2.html** — final report with code hidden

---

## **Datasets Used**

### **AI Job Salaries (Kaggle)**

[https://www.kaggle.com/datasets/adilshamim8/salaries-for-data-science-jobs](https://www.kaggle.com/datasets/adilshamim8/salaries-for-data-science-jobs)
Contains job titles, salaries, experience levels, company characteristics, and global locations from 2020 to 2025.

### **LLM Release Data (Kaggle)**

[https://www.kaggle.com/datasets/jainaru/llms-data-2018-2024](https://www.kaggle.com/datasets/jainaru/llms-data-2018-2024)
Contains release dates, model parameters, company names, and metadata for LLMs from 2018 to 2024.

Both datasets are publicly available for educational and research use.

---

## **Key Findings (Summary)**

### **1. LLM Releases and Job Market Growth**

Both LLM activity and AI job postings increased sharply between 2020 and 2024, with job demand surging following the rise of LLM releases.

### **2. Highest-Paid AI Roles**

Machine Learning Engineers consistently earn the highest salaries, followed by AI Engineers, Data Scientists, and Data Analysts.

### **3. Companies and LLM Strategies**

* **Meta AI** produces the largest models (highest parameter counts).
* **Google** releases the most LLMs overall.
  This suggests different organizational priorities (scale vs. frequency).

### **4. Salary Differences Across Countries**

The United States offers the highest salaries for Data Scientists, followed by Mexico and Canada. Location influences salary more strongly than job title.

---

## **Reproducibility**

All analysis steps—cleaning, merging, plotting, and summarizing—are contained in **final_code.Rmd** for full transparency.

---
