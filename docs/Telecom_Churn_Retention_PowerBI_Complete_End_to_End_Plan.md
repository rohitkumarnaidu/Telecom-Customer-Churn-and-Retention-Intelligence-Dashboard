# Telecom Customer Churn and Retention Intelligence Dashboard
## Complete End-to-End Power BI Project Build Plan

**Recommended resume title**

> Telecom Customer Churn and Retention Intelligence Dashboard

**Project level:** Intermediate to advanced  
**Primary dashboard tool:** Microsoft Power BI  
**Primary domain:** Telecom customer analytics and retention  
**Recommended dataset:** IBM Telco Customer Churn dataset  
**Core skills demonstrated:** Python, Pandas, SQL, Power Query, Power BI, DAX, data modelling, churn analysis, customer segmentation, scenario analysis, root-cause exploration, reporting, GitHub documentation, and interview presentation

---

# 1. Project Vision

Build a complete telecom customer-retention analytics solution that helps business teams understand:

- How much churn exists
- Which customer groups churn the most
- Which contracts, services, payment methods, and pricing patterns are associated with churn
- Which customers should receive retention attention
- How much monthly charge value is represented by high-risk customers
- What actions may help different customer groups
- How decision-makers can explore churn drivers interactively
- How customer-retention scenarios change important business metrics

The project must behave like a professional business-intelligence solution, not just a collection of charts.

---

# 2. Why This Project Is Strong

This project is strong for a Data Analyst internship because it demonstrates:

- End-to-end data analytics
- Customer-level data cleaning
- Exploratory data analysis
- Business KPI calculation
- SQL querying
- Power Query transformations
- Power BI star schema
- Advanced DAX measures
- Churn-rate analysis
- Customer-risk segmentation
- Retention opportunity identification
- Decomposition Tree
- Key Influencers
- What-If parameters
- Field parameters
- Drill-through
- Report-page tooltips
- Dynamic titles
- KPI reconciliation
- Documentation and reporting

The project also shows that you understand the difference between:

- Customer count and churn rate
- Correlation and causation
- Actual customer behavior and rule-based segmentation
- Historical analysis and future prediction
- Charges represented and guaranteed revenue

---

# 3. Final Project Deliverables

At completion, the project should include:

1. Raw telecom dataset preserved without modification.
2. Data-quality audit.
3. Cleaned customer dataset.
4. Feature-engineered analytical dataset.
5. Customer-risk segmentation dataset.
6. Python notebooks.
7. SQL database and analysis queries.
8. Power Query staging layer.
9. Power BI star schema.
10. Dedicated DAX measure table.
11. Five main Power BI dashboard pages.
12. Customer drill-through page.
13. Risk-segment drill-through page.
14. Tooltip pages.
15. Hidden validation page.
16. What-If scenario analysis.
17. Root-cause exploration.
18. Business retention report.
19. GitHub repository.
20. Resume-ready bullets.
21. Interview-preparation notes.
22. Dashboard screenshots.
23. Optional Power BI Service publication.

---

# 4. Business Problem

A telecommunications company is experiencing customer churn but lacks a consolidated view of:

- Customer contract behavior
- Customer tenure
- Monthly and total charges
- Subscribed services
- Payment methods
- Paperless billing
- Technical support
- Online security
- Customer profile characteristics
- High-risk customer groups
- Retention opportunities

The company needs an analytical dashboard that identifies high-churn groups and supports retention planning.

---

# 5. Business Objectives

The project must answer:

## 5.1 Executive questions

- What is the total number of customers?
- How many customers churned?
- What is the overall churn rate?
- What is the average monthly charge?
- What is the average customer tenure?
- How many customers are classified as high risk?
- What monthly-charge value is represented by high-risk customers?

## 5.2 Contract questions

- Which contract type has the highest churn rate?
- How does churn vary by contract duration?
- Are month-to-month customers more likely to churn?
- How do monthly charges differ by contract?
- How does customer tenure differ by contract?

## 5.3 Tenure questions

- Which tenure group has the highest churn?
- Are new customers more likely to churn?
- Does churn reduce as customer tenure increases?
- What is the average tenure of churned customers?
- Which low-tenure groups require attention?

## 5.4 Pricing questions

- Which monthly-charge group has the highest churn?
- Are high-charge customers more likely to churn?
- Which customers combine low tenure and high monthly charges?
- How do total charges differ between churned and retained customers?

## 5.5 Service questions

- How does churn vary by internet service?
- Does technical support relate to retention?
- Does online security relate to retention?
- Does service count relate to churn?
- Which service combinations are associated with high churn?

## 5.6 Billing questions

- Which payment method has the highest churn?
- How does paperless billing relate to churn?
- Does automatic payment have a lower churn rate than manual payment?
- Which contract and payment combinations have elevated churn?

## 5.7 Customer-profile questions

- How does churn vary by senior-citizen status?
- How does churn vary by partner status?
- How does churn vary by dependents?
- Are demographic differences meaningful after considering group size?

## 5.8 Retention questions

- Which customer-risk segments have the highest churn?
- Which high-value customers have already churned?
- Which active customers represent the highest retention priority?
- What retention action should be recommended for each segment?
- What happens to represented monthly charges if selected customers are retained?

---

# 6. Dataset

## 6.1 Recommended dataset

Use the **IBM Telco Customer Churn dataset**.

Typical columns:

```text
customerID
gender
SeniorCitizen
Partner
Dependents
tenure
PhoneService
MultipleLines
InternetService
OnlineSecurity
OnlineBackup
DeviceProtection
TechSupport
StreamingTV
StreamingMovies
Contract
PaperlessBilling
PaymentMethod
MonthlyCharges
TotalCharges
Churn
```

Verify the exact row count and columns after downloading.

## 6.2 Dataset rules

- Keep the raw CSV unchanged.
- Store it under `data/raw/`.
- Do not manually edit the original file.
- Document every cleaning decision.
- Preserve customer identifiers.
- Do not create fake target values.
- Do not claim causation from descriptive analysis.
- Do not describe rule-based risk groups as model predictions.

---

# 7. Technology Stack

| Module | Recommended tool |
|---|---|
| Initial inspection | Microsoft Excel |
| Python environment | Jupyter Notebook or Google Colab |
| Data cleaning | Python and Pandas |
| Feature engineering | Pandas and NumPy |
| EDA charts | Matplotlib |
| Database | SQLite or MySQL |
| SQL connection | SQLAlchemy or `sqlite3` |
| BI transformation | Power Query |
| Dashboard | Power BI Desktop |
| Measures | DAX |
| Root-cause exploration | Decomposition Tree |
| Driver exploration | Key Influencers |
| Scenario analysis | What-If Parameter |
| Dynamic analysis | Field Parameters |
| Version control | Git |
| Repository | GitHub |
| Reporting | Markdown and PDF |
| Optional publication | Power BI Service |

---

# 8. Recommended Repository Structure

```text
telecom-churn-retention-powerbi/
│
├── README.md
├── LICENSE
├── .gitignore
├── requirements.txt
│
├── data/
│   ├── raw/
│   │   └── Telco-Customer-Churn.csv
│   │
│   ├── staging/
│   │   └── telco_staging.csv
│   │
│   └── processed/
│       ├── telco_cleaned.csv
│       ├── customer_risk_segments.csv
│       ├── segment_summary.csv
│       ├── service_summary.csv
│       ├── contract_summary.csv
│       └── data_quality_report.csv
│
├── notebooks/
│   ├── 01_data_understanding.ipynb
│   ├── 02_data_cleaning.ipynb
│   ├── 03_feature_engineering.ipynb
│   ├── 04_exploratory_churn_analysis.ipynb
│   ├── 05_customer_segmentation.ipynb
│   └── 06_kpi_validation.ipynb
│
├── src/
│   ├── __init__.py
│   ├── config.py
│   ├── cleaning.py
│   ├── feature_engineering.py
│   ├── segmentation.py
│   ├── validation.py
│   └── utils.py
│
├── sql/
│   ├── 01_create_database.sql
│   ├── 02_create_tables.sql
│   ├── 03_load_data.sql
│   ├── 04_business_queries.sql
│   └── 05_validation_queries.sql
│
├── database/
│   └── telecom_churn.db
│
├── powerbi/
│   ├── telecom_churn_retention_dashboard.pbix
│   ├── data_model.png
│   ├── page_1_executive_overview.png
│   ├── page_2_customer_service_analysis.png
│   ├── page_3_retention_opportunities.png
│   ├── page_4_root_cause_explorer.png
│   ├── page_5_scenario_analysis.png
│   ├── customer_drillthrough.png
│   ├── segment_drillthrough.png
│   └── qa_validation_page.png
│
├── reports/
│   ├── data_quality_report.md
│   ├── retention_recommendations.md
│   ├── retention_recommendations.pdf
│   └── project_summary.md
│
├── docs/
│   ├── business_requirements.md
│   ├── data_dictionary.md
│   ├── metric_definitions.md
│   ├── segmentation_rules.md
│   ├── powerbi_model_design.md
│   ├── dashboard_user_guide.md
│   ├── qa_reconciliation.md
│   └── interview_notes.md
│
└── assets/
    ├── dashboard_cover.png
    ├── project_architecture.png
    └── workflow_diagram.png
```

---

# 9. Project Architecture

```text
Raw Telecom CSV
        │
        ▼
Initial Excel Inspection
        │
        ▼
Python Data Profiling
        │
        ▼
Python Cleaning
        │
        ▼
Feature Engineering
        │
        ├── Churn Flag
        ├── Tenure Groups
        ├── Charge Groups
        ├── Service Count
        ├── Payment Category
        ├── Contract Category
        ├── Customer Value Group
        └── Risk Segment
        │
        ▼
SQL Database
        │
        ├── Business Queries
        └── KPI Validation
        │
        ▼
Power Query Staging
        │
        ▼
Power BI Star Schema
        │
        ├── DAX Measures
        ├── Field Parameters
        ├── What-If Parameters
        ├── Key Influencers
        ├── Decomposition Tree
        ├── Drill-Through
        └── Tooltip Pages
        │
        ▼
Retention Intelligence Dashboard
        │
        ▼
Business Report + GitHub + Resume
```

---

# 10. Phase 0 — Requirement Planning

Create:

```text
docs/business_requirements.md
```

## 10.1 Stakeholders

- Customer-retention manager
- Marketing manager
- Customer-success team
- Customer-support manager
- Product manager
- Commercial manager
- Business analyst
- Executive leadership

## 10.2 In-scope

- Customer churn
- Contract analysis
- Tenure analysis
- Pricing analysis
- Service analysis
- Billing analysis
- Payment analysis
- Demographic analysis
- Customer-risk segmentation
- Retention recommendations
- Power BI dashboard
- Scenario analysis
- KPI validation

## 10.3 Out-of-scope

- Guaranteed churn prediction
- Causal claims
- Real-time customer scoring
- Production model deployment
- Customer-contact automation
- Revenue forecasting
- Customer lifetime value without suitable historical data
- Personal data enrichment

## 10.4 Success criteria

- Every business question maps to an analysis.
- Every KPI has a definition.
- Customer totals match across Python, SQL, and Power BI.
- Segmentation logic is transparent.
- Dashboard filters work.
- Retention recommendations use actual findings.
- Resume bullets are truthful.

---

# 11. Phase 1 — Environment Setup

## 11.1 Create virtual environment

```bash
python -m venv .venv
```

Activate in PowerShell:

```powershell
.\.venv\Scripts\Activate.ps1
```

Install packages:

```bash
pip install pandas numpy matplotlib sqlalchemy jupyter
```

## 11.2 `requirements.txt`

```text
pandas
numpy
matplotlib
sqlalchemy
jupyter
```

## 11.3 Initialize Git

```bash
git init
git add .
git commit -m "Initialize telecom churn Power BI project"
```

## 11.4 `.gitignore`

```text
.venv/
__pycache__/
.ipynb_checkpoints/
*.pyc
*.tmp
.DS_Store
```

## 11.5 Acceptance criteria

- Python works.
- Jupyter opens.
- Dataset loads.
- Git repository exists.
- Raw data is preserved.

---

# 12. Phase 2 — Initial Excel Inspection

Use Excel for quick inspection only.

## 12.1 Check

- Column headers
- Row count
- Blank `TotalCharges`
- Customer ID uniqueness
- Churn values
- Contract categories
- Internet service categories
- Payment methods
- Monthly-charge range
- Tenure range
- Missing values
- Obvious category inconsistencies

## 12.2 Do not

- Manually clean the raw file.
- Replace blank values directly.
- Delete records without documentation.
- Save over the original CSV.

## 12.3 Deliverable

Add an `Initial Excel Inspection` section to:

```text
reports/data_quality_report.md
```

---

# 13. Phase 3 — Data Understanding Notebook

Create:

```text
notebooks/01_data_understanding.ipynb
```

## 13.1 Notebook sections

1. Project introduction
2. Import libraries
3. Load raw dataset
4. Preview rows
5. Dataset shape
6. Data types
7. Descriptive statistics
8. Missing-value analysis
9. Duplicate analysis
10. Unique-value analysis
11. Category audit
12. Numeric range audit
13. Churn distribution
14. Data-quality report
15. Initial findings

## 13.2 Starter code

```python
from pathlib import Path
import pandas as pd
import numpy as np

PROJECT_ROOT = Path.cwd().parent
RAW_FILE = PROJECT_ROOT / "data" / "raw" / "Telco-Customer-Churn.csv"

df_raw = pd.read_csv(RAW_FILE)
df = df_raw.copy()

print("Shape:", df.shape)
display(df.head())
```

## 13.3 Required checks

```python
df.shape
df.head()
df.tail()
df.sample(5, random_state=42)
df.info()
df.describe(include="all")
df.isnull().sum()
df.isnull().mean().mul(100)
df.duplicated().sum()
df.nunique()
```

## 13.4 Customer ID checks

```python
df["customerID"].isna().sum()
df["customerID"].duplicated().sum()
df["customerID"].nunique()
```

## 13.5 Churn checks

```python
df["Churn"].value_counts(dropna=False)
df["Churn"].value_counts(normalize=True, dropna=False)
```

## 13.6 TotalCharges checks

```python
blank_total_charges = (
    df["TotalCharges"]
    .astype(str)
    .str.strip()
    .eq("")
)

blank_total_charges.sum()
```

## 13.7 Category audit

```python
for column in df.select_dtypes(include="object").columns:
    print(f"\nCOLUMN: {column}")
    print(df[column].value_counts(dropna=False))
```

## 13.8 Data-quality report

Create:

| Check | Count | Percentage | Severity | Planned action |
|---|---:|---:|---|---|
| Duplicate customer IDs | Actual | Actual | High | Investigate |
| Blank TotalCharges | Actual | Actual | Medium | Convert and handle |
| Invalid tenure | Actual | Actual | High | Investigate |
| Invalid MonthlyCharges | Actual | Actual | High | Investigate |
| Unexpected Churn value | Actual | Actual | Critical | Correct/exclude |
| Missing categories | Actual | Actual | Medium | Standardize |

## 13.9 Acceptance criteria

- Every column is understood.
- All category values are inspected.
- Data-type issues are documented.
- Churn distribution is calculated.
- No cleaning occurs without a recorded decision.

---

# 14. Phase 4 — Data Cleaning

Create:

```text
notebooks/02_data_cleaning.ipynb
```

## 14.1 Rename columns

```python
column_map = {
    "customerID": "customer_id",
    "SeniorCitizen": "senior_citizen",
    "PhoneService": "phone_service",
    "MultipleLines": "multiple_lines",
    "InternetService": "internet_service",
    "OnlineSecurity": "online_security",
    "OnlineBackup": "online_backup",
    "DeviceProtection": "device_protection",
    "TechSupport": "tech_support",
    "StreamingTV": "streaming_tv",
    "StreamingMovies": "streaming_movies",
    "PaperlessBilling": "paperless_billing",
    "PaymentMethod": "payment_method",
    "MonthlyCharges": "monthly_charges",
    "TotalCharges": "total_charges",
    "Churn": "churn",
}

df = df_raw.rename(columns=column_map).copy()
```

Convert remaining names to snake_case.

## 14.2 Trim strings

```python
for col in df.select_dtypes(include="object").columns:
    df[col] = df[col].astype("string").str.strip()
```

## 14.3 Remove exact duplicates

```python
df = df.drop_duplicates().copy()
```

## 14.4 Handle duplicate customer IDs

Investigate before removing:

```python
duplicate_ids = df[df["customer_id"].duplicated(keep=False)]
```

When duplicates are exact, keep one. When values differ, document the resolution.

## 14.5 Convert TotalCharges

```python
df["total_charges"] = pd.to_numeric(
    df["total_charges"],
    errors="coerce"
)
```

## 14.6 Handle missing TotalCharges

Check if missing values belong to zero-tenure customers.

```python
missing_total = df["total_charges"].isna()
df.loc[missing_total, ["customer_id", "tenure", "monthly_charges"]]
```

Possible rule:

```python
zero_tenure_missing = (
    df["total_charges"].isna()
    & df["tenure"].eq(0)
)

df.loc[zero_tenure_missing, "total_charges"] = 0
```

Document the exact reasoning.

## 14.7 Validate numeric fields

```python
assert df["tenure"].ge(0).all()
assert df["monthly_charges"].ge(0).all()
assert df["total_charges"].dropna().ge(0).all()
```

## 14.8 Standardize categories

Ensure consistent values for:

- Yes
- No
- No internet service
- No phone service
- Contract types
- Payment methods
- Internet service

Do not merge categories unless business meaning remains clear.

## 14.9 Save staging output

```python
staging_path = (
    PROJECT_ROOT
    / "data"
    / "staging"
    / "telco_staging.csv"
)

df.to_csv(staging_path, index=False)
```

## 14.10 Acceptance criteria

- Customer IDs are valid.
- Numeric fields have correct types.
- Blank TotalCharges are handled transparently.
- Categories are consistent.
- Staging output is reproducible.

---

# 15. Phase 5 — Feature Engineering

Create:

```text
notebooks/03_feature_engineering.ipynb
```

## 15.1 Churn flag

```python
df["churn_flag"] = df["churn"].map({
    "Yes": 1,
    "No": 0
})
```

## 15.2 Customer status

```python
df["customer_status"] = np.where(
    df["churn_flag"].eq(1),
    "Churned",
    "Retained"
)
```

## 15.3 Tenure groups

```python
bins = [-1, 12, 24, 48, 60, float("inf")]

labels = [
    "0-12 Months",
    "13-24 Months",
    "25-48 Months",
    "49-60 Months",
    "61+ Months",
]

df["tenure_group"] = pd.cut(
    df["tenure"],
    bins=bins,
    labels=labels
)
```

## 15.4 Monthly-charge groups

Use quartiles or documented business ranges.

```python
df["monthly_charge_group"] = pd.qcut(
    df["monthly_charges"],
    q=4,
    labels=[
        "Low",
        "Medium",
        "High",
        "Very High"
    ]
)
```

## 15.5 Total-charge groups

```python
df["total_charge_group"] = pd.qcut(
    df["total_charges"].rank(method="first"),
    q=4,
    labels=[
        "Low Value",
        "Medium Value",
        "High Value",
        "Very High Value"
    ]
)
```

## 15.6 Service flags

Create binary values.

```python
df["phone_service_flag"] = (
    df["phone_service"].eq("Yes").astype(int)
)

df["multiple_lines_flag"] = (
    df["multiple_lines"].eq("Yes").astype(int)
)

df["online_security_flag"] = (
    df["online_security"].eq("Yes").astype(int)
)

df["online_backup_flag"] = (
    df["online_backup"].eq("Yes").astype(int)
)

df["device_protection_flag"] = (
    df["device_protection"].eq("Yes").astype(int)
)

df["tech_support_flag"] = (
    df["tech_support"].eq("Yes").astype(int)
)

df["streaming_tv_flag"] = (
    df["streaming_tv"].eq("Yes").astype(int)
)

df["streaming_movies_flag"] = (
    df["streaming_movies"].eq("Yes").astype(int)
)
```

## 15.7 Service count

```python
service_columns = [
    "phone_service_flag",
    "multiple_lines_flag",
    "online_security_flag",
    "online_backup_flag",
    "device_protection_flag",
    "tech_support_flag",
    "streaming_tv_flag",
    "streaming_movies_flag",
]

df["service_count"] = df[service_columns].sum(axis=1)
```

## 15.8 Service-count group

```python
df["service_count_group"] = pd.cut(
    df["service_count"],
    bins=[-1, 2, 4, 6, 8],
    labels=[
        "0-2 Services",
        "3-4 Services",
        "5-6 Services",
        "7-8 Services"
    ]
)
```

## 15.9 Payment category

Example mapping:

```python
automatic_methods = [
    "Bank transfer (automatic)",
    "Credit card (automatic)",
]

df["payment_category"] = np.where(
    df["payment_method"].isin(automatic_methods),
    "Automatic",
    "Manual"
)
```

Keep the original payment method.

## 15.10 Contract category

```python
df["contract_category"] = np.where(
    df["contract"].eq("Month-to-month"),
    "Flexible",
    "Long-Term"
)
```

## 15.11 Internet customer flag

```python
df["internet_customer_flag"] = np.where(
    df["internet_service"].eq("No"),
    0,
    1
)
```

## 15.12 Support bundle flag

```python
df["support_bundle_flag"] = np.where(
    (df["tech_support"].eq("Yes"))
    & (df["online_security"].eq("Yes")),
    1,
    0
)
```

## 15.13 High-charge flag

```python
high_charge_threshold = df["monthly_charges"].quantile(0.75)

df["high_charge_flag"] = (
    df["monthly_charges"]
    .ge(high_charge_threshold)
    .astype(int)
)
```

## 15.14 New-customer flag

```python
df["new_customer_flag"] = (
    df["tenure"].le(12).astype(int)
)
```

## 15.15 High-value customer flag

```python
high_value_threshold = df["total_charges"].quantile(0.75)

df["high_value_customer_flag"] = (
    df["total_charges"]
    .ge(high_value_threshold)
    .astype(int)
)
```

## 15.16 Monthly charges represented

This is simply the current monthly charge associated with the customer.

Do not call it profit or guaranteed retained revenue.

## 15.17 Acceptance criteria

- Every feature has a definition.
- Thresholds are documented.
- Binary fields contain only 0 and 1.
- Service count is within valid range.
- Group fields contain no unexplained missing values.

---

# 16. Phase 6 — Customer-Risk Segmentation

Create:

```text
notebooks/05_customer_segmentation.ipynb
```

## 16.1 Segmentation purpose

Create transparent business-rule segments for retention planning.

These are not model predictions.

## 16.2 Recommended segments

### Segment 1: New High-Risk

Conditions:

- Tenure <= 12 months
- Month-to-month contract
- Monthly charges above dataset median

Action:

- Onboarding support
- Plan-fit review
- Early service check-in

### Segment 2: High-Charge Flexible Contract

Conditions:

- Month-to-month contract
- Monthly charges in top quartile
- Not already New High-Risk

Action:

- Pricing or plan review
- Contract-conversion offer
- Personalized bundle assessment

### Segment 3: Support Opportunity

Conditions:

- Internet service exists
- No technical support
- No online security
- Retained customer

Action:

- Support trial
- Security bundle education
- Proactive support communication

### Segment 4: Contract Conversion Opportunity

Conditions:

- Month-to-month contract
- Tenure above 12 months
- Retained customer

Action:

- Suitable long-term contract offer
- Loyalty incentive
- Contract-benefit communication

### Segment 5: Loyal High-Value

Conditions:

- Tenure >= 48 months
- Total charges above median
- Retained customer

Action:

- Loyalty recognition
- Priority support
- Retention reward

### Segment 6: Churned High-Value

Conditions:

- Churned
- Total charges in top quartile

Action:

- Exit analysis
- Win-back study
- Service-failure review

### Segment 7: Standard Customer

Customers who do not match priority rules.

## 16.3 Segmentation function

```python
monthly_median = df["monthly_charges"].median()
monthly_q75 = df["monthly_charges"].quantile(0.75)
total_median = df["total_charges"].median()
total_q75 = df["total_charges"].quantile(0.75)

def assign_segment(row):
    if (
        row["churn"] == "Yes"
        and row["total_charges"] >= total_q75
    ):
        return "Churned High-Value"

    if (
        row["churn"] == "No"
        and row["tenure"] <= 12
        and row["contract"] == "Month-to-month"
        and row["monthly_charges"] >= monthly_median
    ):
        return "New High-Risk"

    if (
        row["churn"] == "No"
        and row["contract"] == "Month-to-month"
        and row["monthly_charges"] >= monthly_q75
    ):
        return "High-Charge Flexible Contract"

    if (
        row["churn"] == "No"
        and row["internet_service"] != "No"
        and row["tech_support"] == "No"
        and row["online_security"] == "No"
    ):
        return "Support Opportunity"

    if (
        row["churn"] == "No"
        and row["contract"] == "Month-to-month"
        and row["tenure"] > 12
    ):
        return "Contract Conversion Opportunity"

    if (
        row["churn"] == "No"
        and row["tenure"] >= 48
        and row["total_charges"] >= total_median
    ):
        return "Loyal High-Value"

    return "Standard Customer"

df["risk_segment"] = df.apply(
    assign_segment,
    axis=1
)
```

## 16.4 Priority score

Optional transparent score:

```text
Risk Priority Score =
Contract Risk
+ Tenure Risk
+ Charge Risk
+ Support Risk
+ Payment Risk
```

Example:

- Month-to-month: +2
- Tenure <= 12: +2
- High monthly charge: +1
- No technical support: +1
- No online security: +1
- Manual payment: +1

Do not label this probability.

## 16.5 Segment summary

Calculate:

- Customer count
- Customer percentage
- Churned customers
- Churn rate
- Average tenure
- Average monthly charges
- Average total charges
- Total monthly charges represented
- Service count
- Recommended action

## 16.6 Save outputs

```python
processed_dir = (
    PROJECT_ROOT
    / "data"
    / "processed"
)

df.to_csv(
    processed_dir / "telco_cleaned.csv",
    index=False
)

segment_columns = [
    "customer_id",
    "risk_segment",
    "customer_status",
    "churn_flag",
    "tenure",
    "tenure_group",
    "monthly_charges",
    "total_charges",
    "contract",
    "internet_service",
    "tech_support",
    "online_security",
    "payment_method",
    "payment_category",
    "service_count",
]

df[segment_columns].to_csv(
    processed_dir / "customer_risk_segments.csv",
    index=False
)
```

## 16.7 Acceptance criteria

- Segment rules are documented.
- Each customer receives one segment.
- Churned and active customers are not mixed incorrectly.
- Priority score is not described as probability.
- Segment totals reconcile with the customer dataset.

---

# 17. Phase 7 — Exploratory Churn Analysis

Create:

```text
notebooks/04_exploratory_churn_analysis.ipynb
```

## 17.1 Executive KPIs

Calculate:

- Total customers
- Churned customers
- Retained customers
- Overall churn rate
- Average tenure
- Median tenure
- Average monthly charges
- Median monthly charges
- Average total charges
- Average service count
- High-risk customer count
- High-risk monthly charges represented

## 17.2 Contract analysis

Analyze:

- Customer count by contract
- Churn count by contract
- Churn rate by contract
- Average tenure by contract
- Average monthly charges by contract
- Average total charges by contract

## 17.3 Tenure analysis

Analyze:

- Churn rate by tenure group
- Churn count by tenure group
- Tenure distribution by status
- Median tenure by status
- New-customer churn
- Long-tenure churn
- Customer count by tenure month

## 17.4 Pricing analysis

Analyze:

- Monthly charges by churn status
- Total charges by churn status
- Churn by monthly-charge group
- Churn by total-charge group
- High-charge low-tenure customers
- Monthly charges by contract and churn

## 17.5 Service analysis

Analyze churn by:

- Internet service
- Technical support
- Online security
- Online backup
- Device protection
- Streaming TV
- Streaming movies
- Multiple lines
- Phone service
- Service-count group

## 17.6 Billing analysis

Analyze:

- Paperless billing
- Payment method
- Payment category
- Contract and payment combination
- Monthly charges by payment method

## 17.7 Demographic analysis

Analyze:

- Senior citizen
- Gender
- Partner
- Dependents

Use customer count and churn rate together.

## 17.8 Risk-segment analysis

Analyze:

- Customers by segment
- Churn rate by segment
- Average monthly charges by segment
- Average tenure by segment
- Total monthly charges represented
- High-value churned customers
- Segment action table

## 17.9 Findings table

| Finding | Evidence | Business meaning | Recommended action | Limitation |
|---|---|---|---|---|

## 17.10 Visualization standards

- Use churn rate for group comparison.
- Show customer count in labels or tooltips.
- Sort bars by value.
- Avoid 3D charts.
- Avoid excessive pie charts.
- State that relationships are associations.
- Write one interpretation below each chart.

## 17.11 Acceptance criteria

- Every business question is answered.
- Counts and rates are both considered.
- Small customer groups are interpreted carefully.
- No unsupported causal claim exists.
- Findings are based on actual calculations.

---

# 18. Phase 8 — SQL Database

Use SQLite or MySQL.

## 18.1 Table design

```sql
CREATE TABLE telco_customers (
    customer_id TEXT PRIMARY KEY,
    gender TEXT,
    senior_citizen INTEGER,
    partner TEXT,
    dependents TEXT,
    tenure INTEGER,
    phone_service TEXT,
    multiple_lines TEXT,
    internet_service TEXT,
    online_security TEXT,
    online_backup TEXT,
    device_protection TEXT,
    tech_support TEXT,
    streaming_tv TEXT,
    streaming_movies TEXT,
    contract TEXT,
    paperless_billing TEXT,
    payment_method TEXT,
    monthly_charges REAL,
    total_charges REAL,
    churn TEXT,
    churn_flag INTEGER,
    customer_status TEXT,
    tenure_group TEXT,
    monthly_charge_group TEXT,
    total_charge_group TEXT,
    service_count INTEGER,
    service_count_group TEXT,
    payment_category TEXT,
    contract_category TEXT,
    support_bundle_flag INTEGER,
    high_charge_flag INTEGER,
    new_customer_flag INTEGER,
    high_value_customer_flag INTEGER,
    risk_segment TEXT
);
```

## 18.2 Minimum SQL query set

Write at least 30 queries.

### Executive

1. Total customers
2. Churned customers
3. Retained customers
4. Churn rate
5. Average tenure
6. Average monthly charges
7. Average total charges
8. Average service count

### Contract and tenure

9. Churn by contract
10. Churn by contract category
11. Churn by tenure group
12. Average tenure by churn
13. New-customer churn
14. Long-tenure churn
15. Contract and tenure combination

### Pricing

16. Churn by charge group
17. Monthly charges by churn
18. Total charges by churn
19. High-charge low-tenure customers
20. High-value churned customers

### Services

21. Churn by internet service
22. Churn by technical support
23. Churn by online security
24. Churn by service-count group
25. Churn by support bundle
26. Service combination analysis

### Billing

27. Churn by payment method
28. Churn by payment category
29. Churn by paperless billing
30. Contract and payment combination

### Profile and segmentation

31. Churn by senior citizen
32. Churn by partner
33. Churn by dependents
34. Risk-segment summary
35. Risk-segment ranking
36. Monthly charges represented by segment
37. Priority active customers
38. Loyal high-value customers

### Advanced

39. Segment churn ranking
40. Service ranking within contract
41. Customer percentile bands
42. Validation queries
43. Null checks
44. Duplicate-key checks

## 18.3 Example queries

### Overall churn

```sql
SELECT
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    COUNT(*) - SUM(churn_flag) AS retained_customers,
    ROUND(
        100.0 * SUM(churn_flag) / COUNT(*),
        2
    ) AS churn_rate
FROM telco_customers;
```

### Churn by contract

```sql
SELECT
    contract,
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    ROUND(
        100.0 * SUM(churn_flag) / COUNT(*),
        2
    ) AS churn_rate,
    ROUND(AVG(monthly_charges), 2)
        AS average_monthly_charges,
    ROUND(AVG(tenure), 2)
        AS average_tenure
FROM telco_customers
GROUP BY contract
ORDER BY churn_rate DESC;
```

### Churn by service count

```sql
SELECT
    service_count_group,
    COUNT(*) AS customers,
    SUM(churn_flag) AS churned_customers,
    ROUND(
        100.0 * SUM(churn_flag) / COUNT(*),
        2
    ) AS churn_rate
FROM telco_customers
GROUP BY service_count_group
ORDER BY churn_rate DESC;
```

### Segment summary

```sql
SELECT
    risk_segment,
    COUNT(*) AS customers,
    SUM(churn_flag) AS churned_customers,
    ROUND(
        100.0 * SUM(churn_flag) / COUNT(*),
        2
    ) AS churn_rate,
    ROUND(AVG(monthly_charges), 2)
        AS average_monthly_charges,
    ROUND(SUM(monthly_charges), 2)
        AS monthly_charges_represented
FROM telco_customers
GROUP BY risk_segment
ORDER BY churn_rate DESC;
```

### Segment ranking

```sql
WITH segment_metrics AS (
    SELECT
        risk_segment,
        COUNT(*) AS customers,
        SUM(churn_flag) AS churned_customers,
        100.0 * SUM(churn_flag) / COUNT(*)
            AS churn_rate
    FROM telco_customers
    GROUP BY risk_segment
)
SELECT
    risk_segment,
    customers,
    churned_customers,
    ROUND(churn_rate, 2) AS churn_rate,
    DENSE_RANK() OVER (
        ORDER BY churn_rate DESC
    ) AS churn_rank
FROM segment_metrics
ORDER BY churn_rank;
```

## 18.4 Acceptance criteria

- All queries execute.
- SQL totals match Python.
- CTEs and window functions are included.
- Every query has a comment.
- Customer ID remains unique.
- SQL validation checks pass.

---

# 19. Phase 9 — Power Query Preparation

## 19.1 Load

Load:

```text
data/processed/telco_cleaned.csv
```

Optional:

- `segment_summary.csv`
- `data_quality_report.csv`

## 19.2 Recommended queries

- `stg_TelcoCustomers`
- `DimCustomer`
- `DimContract`
- `DimServiceProfile`
- `DimPayment`
- `FactCustomerStatus`
- `SegmentSummary`
- `DataQuality`

For this dataset, a simplified model with one main fact-like customer table plus dimensions is acceptable.

## 19.3 Power Query steps

- Confirm data types.
- Rename fields for display.
- Remove unused technical columns.
- Create references from staging.
- Disable load for staging query.
- Handle null labels carefully.
- Add index only when needed.
- Validate category values.
- Keep IDs as text.
- Keep charges as decimal.
- Keep tenure and service count as whole numbers.

## 19.4 Power Query parameters

Optional parameters:

- Data folder path
- High-risk threshold
- Minimum customer-group size
- Monthly-charge threshold
- Tenure threshold

## 19.5 Acceptance criteria

- No Power Query errors.
- Field types are correct.
- Refresh works.
- Staging query load is disabled.
- Query names are professional.
- Business logic matches Python.

---

# 20. Phase 10 — Power BI Data Model

## 20.1 Recommended star schema

```text
DimCustomer 1 ───── * FactCustomerStatus
DimContract 1 ───── * FactCustomerStatus
DimPayment 1 ────── * FactCustomerStatus
DimServiceProfile 1 ─ * FactCustomerStatus
DimRiskSegment 1 ── * FactCustomerStatus
```

For simplicity, a single clean customer table can be used initially. Then improve it into dimensions.

## 20.2 Recommended dimensions

### DimCustomer

- Customer ID
- Gender
- Senior citizen
- Partner
- Dependents

### DimContract

- Contract
- Contract category

### DimPayment

- Payment method
- Payment category
- Paperless billing

### DimServiceProfile

- Internet service
- Phone service
- Service count
- Service count group
- Tech support
- Online security
- Support bundle

### DimRiskSegment

- Risk segment
- Segment priority
- Recommended action

### FactCustomerStatus

- Customer ID
- Tenure
- Monthly charges
- Total charges
- Churn flag
- Churn status
- Group IDs

## 20.3 Model rules

- Use one-to-many relationships.
- Avoid bidirectional filters unless necessary.
- Use a Measures table.
- Hide technical keys.
- Keep customer ID available for drill-through.
- Use single-direction filtering.
- Avoid unnecessary calculated columns.
- Keep segment definitions documented.

## 20.4 Acceptance criteria

- No ambiguous relationship.
- Customer count remains correct.
- Filters work across visuals.
- Churn measures use correct denominator.
- Model diagram is exported.

---

# 21. Phase 11 — DAX Measure Library

Create a table called:

```text
Measures
```

## 21.1 Core customer measures

```DAX
Total Customers =
DISTINCTCOUNT(
    FactCustomerStatus[CustomerID]
)
```

```DAX
Churned Customers =
CALCULATE(
    [Total Customers],
    FactCustomerStatus[ChurnFlag] = 1
)
```

```DAX
Retained Customers =
CALCULATE(
    [Total Customers],
    FactCustomerStatus[ChurnFlag] = 0
)
```

```DAX
Churn Rate =
DIVIDE(
    [Churned Customers],
    [Total Customers],
    0
)
```

```DAX
Retention Rate =
DIVIDE(
    [Retained Customers],
    [Total Customers],
    0
)
```

## 21.2 Tenure measures

```DAX
Average Tenure =
AVERAGE(
    FactCustomerStatus[Tenure]
)
```

```DAX
Average Tenure Churned =
CALCULATE(
    [Average Tenure],
    FactCustomerStatus[ChurnFlag] = 1
)
```

```DAX
Average Tenure Retained =
CALCULATE(
    [Average Tenure],
    FactCustomerStatus[ChurnFlag] = 0
)
```

## 21.3 Charge measures

```DAX
Average Monthly Charges =
AVERAGE(
    FactCustomerStatus[MonthlyCharges]
)
```

```DAX
Average Total Charges =
AVERAGE(
    FactCustomerStatus[TotalCharges]
)
```

```DAX
Monthly Charges Represented =
SUM(
    FactCustomerStatus[MonthlyCharges]
)
```

```DAX
Churned Monthly Charges =
CALCULATE(
    [Monthly Charges Represented],
    FactCustomerStatus[ChurnFlag] = 1
)
```

```DAX
Retained Monthly Charges =
CALCULATE(
    [Monthly Charges Represented],
    FactCustomerStatus[ChurnFlag] = 0
)
```

## 21.4 Service measures

```DAX
Average Service Count =
AVERAGE(
    FactCustomerStatus[ServiceCount]
)
```

```DAX
Customers Without Tech Support =
CALCULATE(
    [Total Customers],
    FactCustomerStatus[TechSupport] = "No"
)
```

```DAX
Customers Without Online Security =
CALCULATE(
    [Total Customers],
    FactCustomerStatus[OnlineSecurity] = "No"
)
```

## 21.5 Segment measures

```DAX
High-Risk Customers =
CALCULATE(
    [Total Customers],
    FactCustomerStatus[RiskSegment]
        IN {
            "New High-Risk",
            "High-Charge Flexible Contract",
            "Support Opportunity",
            "Contract Conversion Opportunity"
        }
)
```

```DAX
High-Risk Monthly Charges =
CALCULATE(
    [Monthly Charges Represented],
    FactCustomerStatus[RiskSegment]
        IN {
            "New High-Risk",
            "High-Charge Flexible Contract",
            "Support Opportunity",
            "Contract Conversion Opportunity"
        }
)
```

```DAX
Loyal High-Value Customers =
CALCULATE(
    [Total Customers],
    FactCustomerStatus[RiskSegment]
        = "Loyal High-Value"
)
```

## 21.6 Group churn rate

```DAX
Selected Group Churn Rate =
DIVIDE(
    [Churned Customers],
    [Total Customers],
    0
)
```

Filter context automatically adjusts this measure.

## 21.7 Difference measures

```DAX
Churn Rate Difference from Overall =
[Selected Group Churn Rate]
-
CALCULATE(
    [Churn Rate],
    ALL(FactCustomerStatus)
)
```

## 21.8 Target measures

Create a What-If parameter:

```text
Target Churn Rate
```

Range:

```text
0% to 40%
```

Increment:

```text
1%
```

Measure:

```DAX
Churn Rate Target Gap =
[Churn Rate]
-
[Target Churn Rate Value]
```

## 21.9 Customers to retain

```DAX
Customers Needed to Reach Target =
VAR TotalCustomerCount =
    [Total Customers]

VAR CurrentChurned =
    [Churned Customers]

VAR TargetChurned =
    ROUND(
        [Target Churn Rate Value]
        * TotalCustomerCount,
        0
    )

RETURN
MAX(
    0,
    CurrentChurned - TargetChurned
)
```

## 21.10 Monthly charges represented by selected retention count

Create a What-If parameter:

```text
Customers Retained Scenario
```

This should be clearly described as a simplified scenario.

A basic approach:

```DAX
Average Churned Monthly Charge =
CALCULATE(
    [Average Monthly Charges],
    FactCustomerStatus[ChurnFlag] = 1
)
```

```DAX
Scenario Monthly Charges Represented =
[Customers Retained Scenario Value]
*
[Average Churned Monthly Charge]
```

Do not call it guaranteed revenue.

## 21.11 Dynamic title

```DAX
Selected Analysis Title =
"Churn Analysis by "
&
SELECTEDVALUE(
    'Dimension Parameter'[Dimension Parameter],
    "Selected Dimension"
)
```

---

# 22. Phase 12 — Field Parameters

## 22.1 Metric parameter

Allow users to switch between:

- Churn Rate
- Customer Count
- Average Monthly Charges
- Average Tenure
- Monthly Charges Represented
- Average Service Count

## 22.2 Dimension parameter

Allow users to switch between:

- Contract
- Tenure Group
- Internet Service
- Payment Method
- Risk Segment
- Service Count Group
- Monthly Charge Group
- Senior Citizen
- Partner
- Dependents

## 22.3 Acceptance criteria

- Metric selector works.
- Dimension selector works.
- Titles update.
- Number formatting remains understandable.
- Selected parameter is visible to the user.

---

# 23. Phase 13 — Dashboard Page 1: Executive Overview

## 23.1 Purpose

Show management the overall customer and churn situation.

## 23.2 KPI cards

- Total Customers
- Churned Customers
- Retained Customers
- Churn Rate
- Average Monthly Charges
- Average Tenure
- High-Risk Customers
- High-Risk Monthly Charges

## 23.3 Visuals

1. Churned versus retained customers
2. Churn rate by contract
3. Churn rate by tenure group
4. Churn rate by internet service
5. Churn rate by payment method
6. Customer distribution by risk segment
7. Monthly charges represented by status

## 23.4 Slicers

- Contract
- Tenure group
- Internet service
- Payment method
- Risk segment
- Churn status

## 23.5 Interactions

- Reset Filters button
- Navigation buttons
- Tooltip pages
- Dynamic selected-filter title
- Bookmark for compact and detailed views

## 23.6 Acceptance criteria

- Overall churn is understandable in 30 seconds.
- Rates and counts are both shown.
- Filters work.
- KPI cards respond correctly.
- Dashboard is not overcrowded.

---

# 24. Phase 14 — Dashboard Page 2: Customer and Service Analysis

## 24.1 Purpose

Explain how customer services and profile characteristics relate to churn.

## 24.2 KPI cards

- Average Service Count
- Customers Without Tech Support
- Customers Without Online Security
- Support Bundle Customers
- Average Monthly Charges

## 24.3 Visuals

1. Churn by technical support
2. Churn by online security
3. Churn by service-count group
4. Churn by monthly-charge group
5. Churn by paperless billing
6. Churn by senior-citizen status
7. Tenure versus monthly charges
8. Customer-detail table

## 24.4 Customer-detail table

Include:

```text
Customer ID
Churn Status
Contract
Tenure
Monthly Charges
Total Charges
Internet Service
Technical Support
Online Security
Payment Method
Risk Segment
```

## 24.5 Acceptance criteria

- Users can explore service-level patterns.
- Scatter plot remains readable.
- Customer table responds to filters.
- Demographic findings are not exaggerated.
- Churn rate uses correct denominator.

---

# 25. Phase 15 — Dashboard Page 3: Retention Opportunities

## 25.1 Purpose

Turn churn analysis into practical retention groups.

## 25.2 KPI cards

- High-Risk Customers
- High-Risk Churn Rate
- High-Risk Monthly Charges
- Loyal High-Value Customers
- Churned High-Value Customers

## 25.3 Visuals

1. Customer count by risk segment
2. Churn rate by risk segment
3. Average monthly charges by segment
4. Average tenure by segment
5. Monthly charges represented by segment
6. Segment action matrix
7. High-value churned customer table
8. Priority active-customer table

## 25.4 Action matrix

| Segment | Priority | Recommended action |
|---|---|---|
| New High-Risk | High | Onboarding and plan-fit review |
| High-Charge Flexible Contract | High | Pricing and contract assessment |
| Support Opportunity | Medium | Support and security trial |
| Contract Conversion Opportunity | Medium | Suitable long-term offer |
| Loyal High-Value | Protect | Loyalty recognition |
| Churned High-Value | Review | Exit and win-back analysis |

## 25.5 Acceptance criteria

- Every segment has a clear action.
- Segment rules are documented.
- Active and churned segments are distinguished.
- No segment is called a prediction.
- Monthly charges are not called guaranteed revenue.

---

# 26. Phase 16 — Dashboard Page 4: Churn Root-Cause Explorer

## 26.1 Purpose

Allow analysts to explore which dimensions are most associated with churn.

## 26.2 Decomposition Tree

Analyze:

```text
Churned Customers
```

Explain by:

- Contract
- Tenure group
- Internet service
- Payment method
- Monthly-charge group
- Technical support
- Online security
- Paperless billing
- Senior citizen
- Partner
- Dependents
- Risk segment

## 26.3 Key Influencers

Analyze:

```text
Churn Flag
```

Potential explanatory fields:

- Contract
- Tenure
- Monthly charges
- Internet service
- Technical support
- Online security
- Payment method
- Paperless billing
- Service count
- Senior citizen
- Partner
- Dependents

Interpret as associations, not causes.

## 26.4 Field-parameter visual

Allow users to choose:

- Measure
- Dimension

## 26.5 Small-group warning

Create a minimum group-size rule for rankings.

Example:

```text
Only show groups with at least 30 customers
```

## 26.6 Acceptance criteria

- Decomposition Tree works.
- Key Influencers target is correct.
- Factors are interpreted carefully.
- Small groups are filtered or flagged.
- Dynamic titles work.

---

# 27. Phase 17 — Dashboard Page 5: Retention Scenario Analysis

## 27.1 Purpose

Help users explore simplified retention targets.

## 27.2 What-If parameters

### Target Churn Rate

- Minimum: 0%
- Maximum: 40%
- Increment: 1%

### Customers Retained Scenario

- Minimum: 0
- Maximum: based on churned customer count
- Increment: 10 or 25 customers

## 27.3 KPI cards

- Current Churn Rate
- Target Churn Rate
- Churn-Rate Gap
- Customers Needed to Reach Target
- Scenario Customers Retained
- Scenario Monthly Charges Represented

## 27.4 Visuals

1. Current versus target churn rate
2. Customers needed by target level
3. Scenario monthly charges represented
4. Scenario by risk segment
5. Target gap by contract
6. Retention-priority customer table

## 27.5 Important label

Use:

> Scenario Monthly Charges Represented

Do not use:

> Guaranteed Revenue Saved

## 27.6 Acceptance criteria

- Parameter values update measures.
- Scenario explanation is visible.
- No scenario is described as a forecast.
- The business limitation is clearly stated.

---

# 28. Phase 18 — Drill-Through Pages

## 28.1 Customer drill-through

Include:

- Customer ID
- Churn status
- Risk segment
- Contract
- Tenure
- Monthly charges
- Total charges
- Internet service
- Service count
- Technical support
- Online security
- Payment method
- Paperless billing
- Partner
- Dependents

## 28.2 Risk-segment drill-through

Include:

- Segment name
- Customer count
- Churn rate
- Average tenure
- Average monthly charges
- Monthly charges represented
- Contract distribution
- Service distribution
- Payment distribution
- Customer detail table
- Recommended action

## 28.3 Acceptance criteria

- Back button works.
- Filter context is preserved.
- Customer ID is readable.
- No unnecessary personal fields are shown.
- Metrics match the source page.

---

# 29. Phase 19 — Tooltip Pages

## 29.1 Contract tooltip

- Customer count
- Churn rate
- Average tenure
- Average monthly charges

## 29.2 Risk-segment tooltip

- Customer count
- Churned customers
- Churn rate
- Monthly charges represented
- Recommended action

## 29.3 Service tooltip

- Customer count
- Churn rate
- Average monthly charges
- Average service count

## 29.4 Acceptance criteria

- Tooltips are concise.
- Tooltips respond to filter context.
- No irrelevant information is included.
- Values match source measures.

---

# 30. Phase 20 — Dashboard UX Standards

## 30.1 Layout

- Use a consistent 16:9 canvas.
- Place KPI cards at the top.
- Use a side filter panel.
- Keep navigation consistent.
- Maintain equal spacing.
- Limit each page to necessary visuals.

## 30.2 Formatting

- Percentages: one decimal place.
- Monthly charges: currency format.
- Tenure: whole months or one decimal for averages.
- Customer counts: whole numbers.
- Clear visual titles.
- Consistent capitalization.

## 30.3 Accessibility

- Use clear contrast.
- Add alt text.
- Do not rely on color alone.
- Use readable font sizes.
- Maintain logical tab order.
- Use descriptive button labels.

## 30.4 Navigation

Buttons:

- Home
- Executive
- Customer and Service
- Retention Opportunities
- Root Cause
- Scenario Analysis
- Reset Filters
- Help

## 30.5 Help page

Optional hidden or popup page:

- KPI definitions
- Segment definitions
- How to use filters
- Scenario limitations
- Contact or author details

---

# 31. Phase 21 — Data Validation

Create:

```text
notebooks/06_kpi_validation.ipynb
```

## 31.1 Reconciliation table

| KPI | Python | SQL | Power BI | Match |
|---|---:|---:|---:|---|
| Total customers | | | | |
| Churned customers | | | | |
| Retained customers | | | | |
| Churn rate | | | | |
| Average tenure | | | | |
| Average monthly charges | | | | |
| Average total charges | | | | |
| High-risk customers | | | | |
| Monthly charges represented | | | | |

## 31.2 Data tests

- Customer ID unique
- Churn flag valid
- Tenure non-negative
- Monthly charges non-negative
- Total charges non-negative
- Service count valid
- Segment non-null
- Payment category valid
- Contract category valid
- No unexpected categories

## 31.3 Power BI validation page

Create hidden page with:

- Total customer count
- Churn count
- Retained count
- Churn rate
- Average tenure
- Average monthly charges
- Segment totals
- Python reference values
- SQL reference values

## 31.4 Dashboard tests

- All slicers work.
- Reset button works.
- Drill-through works.
- Tooltip pages work.
- Field parameters work.
- What-If parameters work.
- Decomposition Tree works.
- Key Influencers works.
- Dynamic titles work.
- No unexpected blank visuals appear.

## 31.5 Acceptance criteria

- All major KPI totals match.
- Customer counts are not duplicated.
- Every denominator is documented.
- QA page contains matching values.
- No broken interaction remains.

---

# 32. Phase 22 — Business Retention Report

Create:

```text
reports/retention_recommendations.md
```

Export to PDF.

## 32.1 Required sections

1. Executive summary
2. Business problem
3. Dataset overview
4. Data-quality findings
5. Cleaning process
6. Feature engineering
7. KPI definitions
8. Contract findings
9. Tenure findings
10. Pricing findings
11. Service findings
12. Billing findings
13. Demographic findings
14. Risk-segment findings
15. Retention recommendations
16. Scenario analysis
17. Limitations
18. Future improvements

## 32.2 Recommendation format

Each recommendation should include:

- Target segment
- Supporting evidence
- Proposed action
- Measurement method
- Risk or limitation

Example:

> **Target segment:** New month-to-month customers with high monthly charges.  
> **Evidence:** Insert actual customer count and churn rate.  
> **Action:** Introduce early onboarding support and plan-fit reviews.  
> **Measurement:** Compare churn among contacted and non-contacted customers.  
> **Limitation:** Historical association does not prove the action will reduce churn.

---

# 33. Phase 23 — Documentation

## 33.1 README structure

```markdown
# Telecom Customer Churn and Retention Intelligence Dashboard

## Project Overview
## Business Problem
## Objectives
## Dataset
## Technology Stack
## Architecture
## Repository Structure
## Data Quality Audit
## Data Cleaning
## Feature Engineering
## Exploratory Analysis
## SQL Analysis
## Customer Segmentation
## Power Query
## Power BI Data Model
## DAX Measures
## Dashboard Pages
## Advanced Power BI Features
## Key Findings
## Retention Recommendations
## Scenario Analysis
## Quality Assurance
## Limitations
## How to Run
## Dashboard Screenshots
## Author
```

## 33.2 Data dictionary

Create:

```text
docs/data_dictionary.md
```

Columns:

- Source field
- Cleaned field
- Data type
- Meaning
- Allowed values
- Null rule
- Derived status
- Example value

## 33.3 Metric definitions

Create:

```text
docs/metric_definitions.md
```

Include:

- Total Customers
- Churned Customers
- Retained Customers
- Churn Rate
- Retention Rate
- Average Tenure
- Average Monthly Charges
- Monthly Charges Represented
- High-Risk Customers
- High-Risk Monthly Charges
- Customers Needed to Reach Target
- Scenario Monthly Charges Represented

## 33.4 Segmentation rules

Create:

```text
docs/segmentation_rules.md
```

Include:

- Segment name
- Exact rule
- Business rationale
- Recommended action
- Limitation

## 33.5 Power BI model design

Create:

```text
docs/powerbi_model_design.md
```

Include:

- Fact table
- Dimensions
- Relationships
- Filter direction
- Hidden columns
- Measures table
- Refresh process

## 33.6 Dashboard user guide

Explain:

- Page purpose
- Filters
- Navigation
- Drill-through
- Tooltip
- Field parameters
- What-If parameters
- Decomposition Tree
- Key Influencers
- Scenario limitations

---

# 34. Phase 24 — Git and GitHub Workflow

## 34.1 Suggested commits

```text
Initialize telecom churn project structure
Add raw dataset documentation
Complete data understanding notebook
Complete data-cleaning pipeline
Add feature engineering
Add customer-risk segmentation
Complete exploratory churn analysis
Create SQL database and queries
Build Power Query staging layer
Create Power BI data model
Add DAX measure library
Complete executive dashboard
Complete customer and service dashboard
Complete retention opportunities dashboard
Add root-cause explorer
Add scenario analysis page
Add drill-through and tooltip pages
Complete KPI reconciliation
Add report and documentation
Finalize README and screenshots
```

## 34.2 Repository topics

- `power-bi`
- `customer-churn`
- `data-analysis`
- `sql`
- `python`
- `dax`
- `power-query`
- `customer-retention`
- `business-intelligence`

## 34.3 GitHub quality standards

- Professional repository title
- Clear description
- Good README
- Dashboard screenshots
- Architecture image
- SQL scripts
- Notebooks
- Report PDF
- License
- No broken links
- No local absolute paths
- No temporary files

---

# 35. Phase 25 — Resume Entry

Use after completion and replace general wording with verified numbers.

```text
Telecom Customer Churn and Retention Intelligence Dashboard
Python | SQL | Power BI | Power Query | DAX

• Cleaned and transformed customer-level telecom data using Python and Pandas,
  resolving blank total-charge values, data-type issues, duplicate identifiers,
  and inconsistent categorical fields.

• Performed exploratory and SQL-based analysis across customer tenure, contracts,
  monthly charges, subscribed services, billing, payment methods, and customer
  profiles to identify high-churn groups.

• Developed a five-page Power BI retention-intelligence dashboard using Power
  Query, a structured data model, reusable DAX measures, field parameters,
  drill-through, report-page tooltips, and interactive filters.

• Created transparent rule-based customer-risk segments and implemented
  Decomposition Tree, Key Influencers, and What-If scenario analysis to support
  evidence-based retention planning.
```

Add one verified result:

```text
• Identified [actual customer segment] as the highest-churn group, with a verified
  churn rate of [actual value], and recommended targeted retention actions.
```

Do not invent the result.

---

# 36. Phase 26 — Interview Preparation

Prepare answers for:

1. What is customer churn?
2. How did you calculate churn rate?
3. Why did you use customer ID as a distinct count?
4. How did you handle blank TotalCharges?
5. How did you define tenure groups?
6. Why did you use quartiles for charge groups?
7. How did you calculate service count?
8. What is the difference between churn count and churn rate?
9. How did you define high-risk segments?
10. Why are segments not predictions?
11. What is Power Query?
12. What is a star schema?
13. What is the difference between a measure and calculated column?
14. What is a filter context?
15. What is a field parameter?
16. What is a What-If parameter?
17. What does the Decomposition Tree show?
18. How should Key Influencers be interpreted?
19. How did you validate KPI totals?
20. Why did you call the metric “Monthly Charges Represented”?
21. What were your strongest findings?
22. What recommendation did you make?
23. What limitations exist in the dataset?
24. What would you improve with more time?
25. How would you measure whether a retention intervention worked?

---

# 37. Recommended 14-Day Build Schedule

| Day | Work |
|---|---|
| 1 | Requirements, setup, repository, dataset inspection |
| 2 | Data understanding and quality audit |
| 3 | Data cleaning and TotalCharges treatment |
| 4 | Feature engineering |
| 5 | Customer-risk segmentation |
| 6 | Contract, tenure, and pricing EDA |
| 7 | Service, payment, billing, and profile EDA |
| 8 | SQL database and basic queries |
| 9 | Advanced SQL and KPI validation |
| 10 | Power Query and data model |
| 11 | DAX measures and executive dashboard |
| 12 | Customer-service and retention pages |
| 13 | Root-cause, scenario, drill-through, and tooltips |
| 14 | QA, report, README, screenshots, resume bullets |

Optional Days 15–16:

- Power BI Service publication
- Mobile layout
- Performance optimization
- Video walkthrough
- LinkedIn portfolio post

---

# 38. Final Acceptance Checklist

## Planning

- [ ] Business requirements exist.
- [ ] Stakeholders are defined.
- [ ] Business questions are locked.
- [ ] Out-of-scope items are documented.
- [ ] KPI definitions are written.

## Data

- [ ] Raw CSV is untouched.
- [ ] Customer IDs are unique.
- [ ] TotalCharges is numeric.
- [ ] Missing TotalCharges treatment is documented.
- [ ] Churn flag is valid.
- [ ] Tenure groups are correct.
- [ ] Charge groups are documented.
- [ ] Service count is correct.
- [ ] Segments are reproducible.

## Python

- [ ] Six notebooks exist.
- [ ] All notebooks run top to bottom.
- [ ] No absolute paths exist.
- [ ] Charts have titles.
- [ ] Findings are written.
- [ ] No causal claims are made.
- [ ] Processed outputs are reproducible.

## SQL

- [ ] Database exists.
- [ ] At least 30 analytical queries exist.
- [ ] CTEs are used.
- [ ] Window functions are used.
- [ ] SQL totals match Python.
- [ ] Validation queries exist.
- [ ] Queries contain comments.

## Power Query

- [ ] Staging query has load disabled.
- [ ] Data types are correct.
- [ ] Refresh works.
- [ ] No query errors exist.
- [ ] Transformations match Python logic.

## Power BI model

- [ ] Model relationships are valid.
- [ ] Customer count remains correct.
- [ ] Single-direction filtering is used.
- [ ] Measures table exists.
- [ ] Technical keys are hidden.
- [ ] Model diagram is exported.

## DAX

- [ ] Total Customers works.
- [ ] Churned Customers works.
- [ ] Churn Rate works.
- [ ] Average Tenure works.
- [ ] Monthly Charges Represented works.
- [ ] High-Risk Customers works.
- [ ] Scenario measures work.
- [ ] Dynamic titles work.
- [ ] Python, SQL, and Power BI values match.

## Dashboard

- [ ] Executive page is complete.
- [ ] Customer and Service page is complete.
- [ ] Retention Opportunities page is complete.
- [ ] Root-Cause Explorer is complete.
- [ ] Scenario Analysis page is complete.
- [ ] Customer drill-through works.
- [ ] Segment drill-through works.
- [ ] Tooltips work.
- [ ] Field parameters work.
- [ ] What-If parameters work.
- [ ] Reset button works.
- [ ] Navigation is consistent.
- [ ] Hidden QA page exists.
- [ ] Screenshots are exported.

## Documentation

- [ ] README is complete.
- [ ] Data dictionary exists.
- [ ] Metric definitions exist.
- [ ] Segmentation rules exist.
- [ ] Model design exists.
- [ ] Dashboard guide exists.
- [ ] Retention report exists.
- [ ] Limitations are included.
- [ ] GitHub links work.

## Resume and interview

- [ ] Resume bullets contain actual work.
- [ ] No fake metrics are included.
- [ ] You can explain every feature listed.
- [ ] You can explain segmentation.
- [ ] You can explain KPI denominators.
- [ ] You can explain scenario limitations.
- [ ] A two-minute project demo is prepared.

---

# 39. Definition of Done

The project is complete only when:

1. The cleaned dataset can be reproduced from the raw CSV.
2. Customer totals match across Python, SQL, and Power BI.
3. All five dashboard pages answer the defined business questions.
4. Segmentation rules are transparent.
5. Root-cause and scenario features work correctly.
6. Recommendations are supported by real findings.
7. The GitHub repository is professional.
8. Resume bullets are truthful.
9. You can demonstrate the complete workflow without reading notes.
10. You can clearly explain the limitations of the analysis.

---

# 40. Final Two-Project Resume Combination

Use these two Power BI projects:

## Project 1

**Enterprise E-Commerce Operations and Customer Experience Control Tower**

```text
Python | SQL | Power BI | Power Query | DAX
```

Demonstrates:

- Multi-table relational modelling
- E-commerce operations
- Delivery SLA
- Seller analysis
- Customer reviews
- Advanced Power BI

## Project 2

**Telecom Customer Churn and Retention Intelligence Dashboard**

```text
Python | SQL | Power BI | Power Query | DAX
```

Demonstrates:

- Customer behavior
- Churn analysis
- Risk segmentation
- Retention planning
- Scenario analysis
- Root-cause exploration

Together, these projects show both:

- Complex operational analytics
- Deep customer-retention analytics
