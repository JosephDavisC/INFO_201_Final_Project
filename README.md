# INFO 201 Final Project: Large Language Models and the AI Job Market

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![R](https://img.shields.io/badge/R-4.0%2B-276DC3?logo=r)](https://www.r-project.org/)
[![RStudio](https://img.shields.io/badge/RStudio-Recommended-75AADB?logo=rstudio)](https://posit.co/download/rstudio-desktop/)

![AI Job Market & LLM Growth](Media/AI_Job_Market_&_LLM_Growth.png)

## Overview

**INFO 201 Final Project - Group 2**

This research project examines the relationship between **Large Language Model (LLM) development** and **AI job market trends** from 2020 to 2025. By analyzing 151,445 job postings and 342 LLM releases, we provide actionable insights for students, career advisors, and early-career professionals navigating the rapidly evolving AI landscape.

**Team Members:**
- [Joseph Chamdani](https://github.com/josephdavisc)
- [Winson Teh](https://github.com/win719)
- [Kenneth Wu](https://github.com/kennethwu30)
- [Hanjun Ma](https://github.com/decade3601)

**Course:** INFO 201 -  Intro to data programming, University of Washington

---

## Research Questions

This analysis addresses four key questions:

1. **Market Correlation:** How does the growth in LLM releases relate to AI job postings from 2020 to 2024?
2. **Role Hierarchy:** Which AI job roles earn the highest salaries, and how have these evolved from 2020 to 2025?
3. **Corporate Strategy:** Which companies produce the largest LLMs, and which release the most models?
4. **Geographic Variation:** Which countries offer the highest AI salaries when controlling for job role?

---

## Repository Structure

```
INFO_201/
│
├── Data/                              # Raw datasets
│   ├── job-salaries.csv              # 151,445 AI job postings (2020-2025)
│   └── large-language-models.csv     # 342 LLM releases (2018-2024)
│
├── Graphs/                            # Generated visualizations
│   ├── RQ1.png                       # LLM releases vs job postings
│   ├── RQ2_LLM_Model.png            # Companies by model size
│   ├── RQ2_LLM_Release.png          # Companies by release frequency
│   ├── RQ3.png                       # Salary trends by role
│   └── RQ4.png                       # Salary comparison by country
│
├── Media/                             # Project assets
│   └── AI_Job_Market_&_LLM_Growth.png
│
├── final_code_group_2.Rmd            # Complete analysis with code
├── final_code_group_2.html           # Rendered analysis (code visible)
│
├── final_report_group_2.Rmd          # Polished report (code hidden)
├── final_report_group_2.html         # Final deliverable
│
├── LICENSE                            # Apache License 2.0
└── README.md                          # Project documentation
```

---

## Getting Started

### Quick Preview

**View the live report without running any code:**
[**📊 View Final Report Online**](https://uw.joechamdani.com/projects/INFO_201/final_report_group_2)

---

### Prerequisites

- **R** (version 4.0 or higher)
- **RStudio** (recommended IDE)
- **tidyverse** package

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/josephdavisc/INFO_201.git
   cd INFO_201
   ```

2. **Install required R packages:**
   ```r
   install.packages("tidyverse")
   ```

3. **Open the RStudio project:**
   - Double-click [INFO_201.Rproj](INFO_201.Rproj)

### Running the Analysis

1. **Open the code file:**
   - Navigate to [final_code_group_2.Rmd](final_code_group_2.Rmd)

2. **Knit to HTML:**
   - Click the **Knit** button in RStudio
   - Output will generate as [final_code_group_2.html](final_code_group_2.html)

3. **View the final report:**
   - Open [final_report_group_2.html](final_report_group_2.html) in any web browser

---

## Data Sources

### AI Job Salaries Dataset
**Source:** [Kaggle - Salaries for Data Science Jobs](https://www.kaggle.com/datasets/adilshamim8/salaries-for-data-science-jobs)

- **Coverage:** 2020-2025
- **Size:** 151,445 rows, 11 columns
- **Key Variables:**
  - Job titles and roles
  - Salaries (in USD)
  - Experience levels
  - Employment type
  - Company size and location
  - Employee residence (country)

### Large Language Models Dataset
**Source:** [Kaggle - LLMs Data (2018-2024)](https://www.kaggle.com/datasets/jainaru/llms-data-2018-2024)

- **Coverage:** 2018-2024
- **Size:** 342 rows, 11 columns
- **Key Variables:**
  - Model names
  - Developing companies
  - Model parameters (size)
  - Release dates
  - Training datasets
  - Token counts

**License:** Both datasets are publicly available for educational and research purposes.

---

## Key Findings

### 1. Strong Correlation Between LLM Development and Job Growth

![Job Postings vs LLM Releases](Graphs/RQ1.png)

AI job postings experienced exponential growth from **75 postings in 2020** to over **62,000 in 2024**—an **800x increase**. This surge closely tracks the acceleration of LLM releases, which grew from 3 models in 2020 to approximately 100 in 2024. The correlation suggests that LLM advancement is a significant driver of AI employment demand.

**Key Insight:** The post-2022 acceleration aligns with the release of ChatGPT and other publicly accessible LLMs, indicating that consumer-facing AI applications dramatically impact labor markets.

---

### 2. Salary Hierarchy Among AI Roles

![Salary by Job Role](Graphs/RQ3.png)

Analysis of 151,445 job postings reveals a consistent salary hierarchy:

1. **Machine Learning Engineers** - Highest average salaries across all years
2. **AI Engineers** - Second-highest compensation
3. **Data Scientists** - Mid-range salaries with strong growth
4. **Data Analysts** - Entry-level compensation tier

**Key Insight:** All roles show salary increases post-2022, with Machine Learning Engineers maintaining a 20-30% premium over other positions. This suggests specialization in model development commands significant market value.

---

### 3. Divergent Corporate Strategies in LLM Development

![Companies by Model Size](Graphs/RQ2_LLM_Model.png) | ![Companies by Release Frequency](Graphs/RQ2_LLM_Release.png)

**Scale vs. Volume:**
- **Meta AI** produces the largest models by parameter count (scale-focused strategy)
- **Google** releases the most models overall (volume-focused strategy)

**Key Insight:** Top companies pursue different innovation strategies—some prioritize breakthrough capabilities through massive models, while others emphasize rapid iteration and diverse applications. Neither approach dominates the top-10 rankings for both metrics, indicating multiple viable paths to market leadership.

---

### 4. Geographic Salary Disparities

![Salary by Country](Graphs/RQ4.png)

Controlling for job role (Data Scientists), the top-paying countries are:

1. **United States** - Highest average salaries
2. **Mexico** - Second-highest (unexpected finding)
3. **Canada** - Third-highest

**Key Insight:** The United States offers 20-40% higher salaries than other top-10 countries for equivalent roles. The strong performance of Mexico and Canada suggests North American tech integration and potentially lower cost-of-living adjustments attracting talent.

---

## Methodology

### Data Cleaning and Processing

1. **Job Salaries Dataset:**
   - Standardized job titles using keyword detection (`grepl` function)
   - Consolidated roles into 4 categories: Machine Learning Engineer, AI Engineer, Data Scientist, Data Analyst
   - Filtered for complete records (removed rows with missing salary or year data)

2. **LLM Dataset:**
   - Normalized company names (consolidated Google variants: "Google", "Google AI", "Google DeepMind" → "Google")
   - Cleaned parameter values (removed non-numeric characters)
   - Extracted year from release date strings

3. **Integration:**
   - Merged datasets by year for temporal correlation analysis
   - Aggregated data by country, role, and company for comparative analysis

### Analysis Techniques

- **Time Series Analysis:** Tracking year-over-year trends
- **Categorical Grouping:** Comparing by role, company, and geography
- **Statistical Summarization:** Mean salaries, counts, and distributions
- **Correlation Analysis:** Examining relationships between LLM metrics and job metrics

---

## Technologies Used

- **Language:** R (version 4.0+)
- **Core Packages:**
  - `tidyverse` - Data manipulation and visualization
  - `ggplot2` - Statistical graphics
  - `dplyr` - Data transformation
  - `readr` - Data import
- **Environment:** RStudio
- **Output Format:** R Markdown (knitted to HTML)

---

## Reproducibility

All analysis steps are fully documented and transparent:

- Complete data cleaning procedures in [final_code_group_2.Rmd](final_code_group_2.Rmd)
- All visualizations generated from reproducible code
- Raw datasets included in the repository
- No proprietary or closed-source tools required

To reproduce the analysis, follow the steps in the [Getting Started](#getting-started) section.

---

## Contributing

This project was completed as a course requirement for INFO 201. While we are not actively maintaining the repository, we welcome feedback and discussion:

- Open an issue for questions or suggestions
- Fork the repository for your own analysis

---

## License

This project is licensed under the **Apache License 2.0** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

- **Data Sources:** Kaggle community for providing public datasets
- **Course:** INFO 201 - Information Technology and Society, University of Washington
- **Instructor:** Ott Toomet

---

## Contact

For questions or collaboration opportunities, reach out to the team members:

- Joseph Chamdani - [GitHub](https://github.com/josephdavisc)
- Winson Teh - [GitHub](https://github.com/win719)
- Kenneth Wu - [GitHub](https://github.com/kennethwu30)
- Hanjun Ma - [GitHub](https://github.com/decade3601)

---

**Last Updated:** December 2025
