<div align="center">

# 📡 Telecom Customer Churn & Retention Intelligence Dashboard

[![Python](https://img.shields.io/badge/Python-3.10+-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)
[![SQLite](https://img.shields.io/badge/SQLite-003B57?style=for-the-badge&logo=sqlite&logoColor=white)](https://www.sqlite.org/)
[![Jupyter](https://img.shields.io/badge/Jupyter-F37626?style=for-the-badge&logo=jupyter&logoColor=white)](https://jupyter.org/)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/rohitkumarnaidu/Telecom-Customer-Churn-and-Retention-Intelligence-Dashboard)

**An end-to-end enterprise analytics project** — from raw telecom customer data to an interactive Power BI retention intelligence dashboard with a 100-point churn risk scoring engine, SQL analytical layer, and actionable retention playbooks.

</div>

---

## 🎯 Business Problem

A telecom company is losing **26.54%** of its customers — approximately **1 in 4** — resulting in over **$1.67 million in annualized revenue loss**. The business needs to understand *who* is at risk, *why* they churn, and *what* targeted action to take before they leave.

### Key Findings

| 🔴 High Risk Segment | Churn Rate | Revenue Impact |
|---|---|---|
| Month-to-Month Contract | **42.7%** | Largest churner group |
| First-Year Customers (0–12 months) | **47.4%** | Onboarding danger zone |
| Electronic Check Payment | **45.3%** | Payment friction cluster |
| Fiber Optic with No Tech Support | **~50%** | Premium customer paradox |

---

## 🏗️ Project Architecture

```
Raw Data (IBM Telco CSV)
        │
        ▼
┌─────────────────────────────────────────────────────────────────────┐
│                         PYTHON PIPELINE                             │
│                                                                     │
│  01_data_understanding  ──▶  02_data_cleaning  ──▶  03_feature_eng │
│                                                            │        │
│  04_segmentation  ◀──────────────────────────────────────-┘        │
│        │                                                            │
│        ▼                                                            │
│  05_eda_churn_analysis                                              │
└─────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌──────────────────┐       ┌──────────────────────────────┐
│  data/staging/   │       │  data/processed/             │
│  telco_staging   │──────▶│  telco_cleaned.csv           │
│  .csv            │       │  telco_segmented.csv         │
└──────────────────┘       └──────────────┬───────────────┘
                                          │
                    ┌─────────────────────┼───────────────────────┐
                    ▼                                             ▼
        ┌────────────────────┐                    ┌────────────────────────┐
        │   SQLite Database  │                    │   Power BI Desktop     │
        │  telecom_churn.db  │                    │                        │
        │  ─ schema.sql      │                    │  ─ Power Query ETL     │
        │  ─ views.sql       │                    │  ─ Star Schema Model   │
        │  ─ queries.sql     │                    │  ─ DAX Measures        │
        └────────────────────┘                    │  ─ 6 Dashboard Pages   │
                                                  └────────────────────────┘
```

---

## 📁 Project Structure

```
Telecom/
├── 📂 data/
│   ├── raw/                        # Original IBM Telco CSV (never modified)
│   │   └── Telco-Customer-Churn.csv
│   ├── staging/                    # After Phase 4 cleaning
│   │   └── telco_staging.csv
│   └── processed/                  # After Phase 5-6 feature engineering & segmentation
│       ├── telco_cleaned.csv
│       └── telco_segmented.csv
│
├── 📂 notebooks/                   # Jupyter analysis notebooks (run sequentially)
│   ├── 01_data_understanding.ipynb # Phase 3 — EDA & data profiling (15 sections)
│   ├── 02_data_cleaning.ipynb      # Phase 4 — Clean, type-cast, validate, stage
│   ├── 03_feature_engineering.ipynb# Phase 5 — 11 engineered business features
│   ├── 04_segmentation.ipynb       # Phase 6 — 100-pt risk score & priority matrix
│   └── 05_eda_churn_analysis.ipynb # Phase 7 — Statistical deep dive & chart assets
│
├── 📂 sql/                         # SQL analytical layer
│   ├── schema.sql                  # DDL — fact table, constraints, indexes
│   ├── views.sql                   # 5 analytical views (KPIs, VIP worklist)
│   ├── queries.sql                 # Advanced queries (NTILE, CTEs, ROI simulation)
│   └── load_database.py            # Automated DB build & CSV ingestion
│
├── 📂 powerbi/                     # Power BI assets
│   ├── power_query_etl.m           # Power Query M — Star schema ETL transforms
│   ├── dax_measures.dax            # Full DAX measures library (20+ measures)
│   └── dashboard_specifications.md # 6-page wireframe & visual layout specs
│
├── 📂 database/                    # SQLite database output
│   └── telecom_churn.db            # Generated by sql/load_database.py
│
├── 📂 assets/                      # Generated chart images for reports/presentations
│   ├── churn_distribution.png
│   ├── churn_by_contract.png
│   ├── churn_by_tenure_cohort.png
│   ├── churn_by_internet_techsupport.png
│   ├── churn_by_payment_method.png
│   └── correlation_matrix.png
│
├── 📂 docs/                        # Project documentation
│   ├── LEARNING_GUIDE.md           # End-to-end learning handbook with diagrams
│   ├── business_requirements.md    # Business Requirements Document (BRD)
│   └── Telecom_Churn_Retention_PowerBI_Complete_End_to_End_Plan.md
│
├── 📂 reports/
│   └── data_quality_report.md      # Data audit findings (real stats)
│
├── 📂 src/                         # Reserved for utility scripts
├── .gitignore
├── requirements.txt
└── README.md
```

---

## 🔬 Dataset

| Property | Value |
|---|---|
| **Source** | IBM Telco Customer Churn (Kaggle / IBM Sample) |
| **Rows** | 7,043 customers |
| **Columns** | 21 raw → 32+ after engineering |
| **Churn Rate** | 26.54% (1,869 churned) |
| **Key Anomaly** | `TotalCharges` stored as string due to 11 blank values (tenure = 0) |

---

## ⚙️ Tech Stack

| Layer | Technology | Purpose |
|---|---|---|
| **Language** | Python 3.10+ | Data processing & analysis |
| **DataFrames** | Pandas + NumPy | Cleaning, transformation, feature engineering |
| **Visualization** | Matplotlib | Chart generation & asset creation |
| **Notebooks** | Jupyter | Interactive, step-by-step analysis |
| **Database** | SQLite (ANSI SQL) | Relational storage, views, analytical queries |
| **BI Tool** | Power BI Desktop | Interactive dashboards & DAX reporting |
| **Version Control** | Git + GitHub | Code history, branching, collaboration |

---

## 🚀 How to Run Locally

### Prerequisites
- Python 3.10+
- Git
- Power BI Desktop (for dashboard)

### 1. Clone the Repository
```bash
git clone https://github.com/rohitkumarnaidu/Telecom-Customer-Churn-and-Retention-Intelligence-Dashboard.git
cd Telecom-Customer-Churn-and-Retention-Intelligence-Dashboard
```

### 2. Create Virtual Environment & Install Dependencies
```powershell
# Windows PowerShell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
pip install -r requirements.txt
```

### 3. Launch Jupyter and Run Notebooks Sequentially
```powershell
.\.venv\Scripts\jupyter.exe notebook
```

Run in this order:
1. `notebooks/01_data_understanding.ipynb` → Explore & profile raw data
2. `notebooks/02_data_cleaning.ipynb` → Clean & stage → `data/staging/telco_staging.csv`
3. `notebooks/03_feature_engineering.ipynb` → Engineer features → `data/processed/telco_cleaned.csv`
4. `notebooks/04_segmentation.ipynb` → Risk scoring → `data/processed/telco_segmented.csv`
5. `notebooks/05_eda_churn_analysis.ipynb` → Deep analysis → chart assets in `assets/`

### 4. Build the SQLite Database
```powershell
# From project root (after running notebooks 1-5)
python sql/load_database.py
```

### 5. Open Power BI Dashboard
- Open Power BI Desktop
- Import `data/processed/telco_segmented.csv` or connect to `database/telecom_churn.db`
- Copy DAX measures from `powerbi/dax_measures.dax` into your measure tables
- Reference `powerbi/dashboard_specifications.md` for layout guidance

---

## 📊 The 100-Point Churn Risk Scorecard

This project uses an **explainable rule-based scoring system** (not a black-box ML model) so every stakeholder can understand exactly why a customer is flagged.

| Risk Factor | Condition | Points |
|---|---|---|
| Contract Type | Month-to-month | **+30** |
| Contract Type | One year | **+10** |
| Tenure Lifecycle | 0–12 months (Year 1) | **+25** |
| Tenure Lifecycle | 13–24 months (Year 2) | **+15** |
| Tenure Lifecycle | 25–48 months (Years 3–4) | **+5** |
| Internet Service | Fiber optic | **+15** |
| Internet Service | DSL | **+5** |
| Protection Gap | No Tech Support (on internet) | **+10** |
| Protection Gap | No Online Security (on internet) | **+10** |
| Payment Friction | Electronic check | **+10** |

| Score Range | Risk Tier |
|---|---|
| **≥ 60 points** | 🔴 High Risk |
| **30 – 59 points** | 🟡 Medium Risk |
| **< 30 points** | 🟢 Low Risk |

---

## 🎯 Retention Priority Matrix

| Priority | Criteria | Recommended Action |
|---|---|---|
| **1. Critical Save (VIP Risk)** | High Risk + High Value | Direct account manager call + 1-yr contract incentive |
| **2. Urgent Retention** | High Risk + Med/Low Value | Automated email + $5 autopay incentive |
| **3. Proactive Nurture** | Medium Risk + High Value | Loyalty reward + complimentary tech upgrade |
| **4. Standard Engagement** | Medium Risk + Med/Low Value | Satisfaction survey + feature discovery |
| **5. Low Touch / Stable** | Low Risk | Standard billing + referral program |

---

## 📐 Power BI Data Model (Star Schema)

```
Dim_Customer ──────────────┐
                           │
Dim_Contract ──────────────┼──▶  Fact_CustomerChurn
                           │         (measures & risk scores)
Dim_PaymentMethod ─────────┘
```

---

## 📖 Documentation & Learning

| Document | Description |
|---|---|
| [`docs/LEARNING_GUIDE.md`](docs/LEARNING_GUIDE.md) | 📚 Complete end-to-end learning handbook with Mermaid diagrams, What/Why/How/Real-World breakdowns for every phase |
| [`docs/business_requirements.md`](docs/business_requirements.md) | 📋 Business Requirements Document — stakeholder goals, KPIs, success metrics |
| [`reports/data_quality_report.md`](reports/data_quality_report.md) | 🔍 Data audit report — real inspection statistics from the raw dataset |
| [`powerbi/dashboard_specifications.md`](powerbi/dashboard_specifications.md) | 🖥️ 6-page dashboard wireframes and visual layout guide |

---

## 📈 Key Business Insights

```
Financial Portfolio:
  ├── Total MRR:              $456,116 / month
  ├── Churned MRR:            $139,131 / month  (30.5% revenue loss)
  └── Annualized Revenue Lost: $1,669,570 / year

Churned Customers Spend MORE:
  ├── Avg Monthly Charge (Churned):   $74.44 / month
  └── Avg Monthly Charge (Retained):  $61.26 / month
  ⚠️  We are disproportionately losing our highest-value customers!
```

---

## 🗺️ Project Phase Tracker

| Phase | Description | Status |
|---|---|---|
| Phase 0 | Business Requirements (BRD) | ✅ Complete |
| Phase 1 | Environment & Folder Setup | ✅ Complete |
| Phase 2 | Initial Data Inspection | ✅ Complete |
| Phase 3 | Data Understanding Notebook | ✅ Complete |
| Phase 4 | Data Cleaning Pipeline | ✅ Complete |
| Phase 5 | Feature Engineering | ✅ Complete |
| Phase 6 | Customer Risk Segmentation | ✅ Complete |
| Phase 7 | Exploratory Churn Analysis | ✅ Complete |
| Phase 8 | SQL Database & Views | ✅ Complete |
| Phase 9–10 | Power Query & BI Data Model | ✅ Spec Complete |
| Phase 11 | DAX Measures Library | ✅ Spec Complete |
| Phase 12–17 | Power BI Dashboard Pages | 🔄 In Progress |

---

## 👤 Author

**Rohit Kumar Naidu**
- GitHub: [@rohitkumarnaidu](https://github.com/rohitkumarnaidu)
- Project: [Telecom Churn & Retention Intelligence Dashboard](https://github.com/rohitkumarnaidu/Telecom-Customer-Churn-and-Retention-Intelligence-Dashboard)

---

<div align="center">

*Built as a complete end-to-end data analytics portfolio project — Python → SQL → Power BI*

</div>
