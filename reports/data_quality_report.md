# Data Quality Report

## Phase 2 — Initial Data Inspection

**Dataset:** `data/raw/Telco-Customer-Churn.csv`
**Source:** IBM Telco Customer Churn (Official IBM GitHub Repository)
**Inspected on:** 2026-08-05

---

### 1. Shape

| Check | Value |
|---|---|
| Total Rows | 7,043 |
| Total Columns | 21 |

---

### 2. Column Headers

All 21 expected columns are present:

`customerID`, `gender`, `SeniorCitizen`, `Partner`, `Dependents`, `tenure`, `PhoneService`, `MultipleLines`, `InternetService`, `OnlineSecurity`, `OnlineBackup`, `DeviceProtection`, `TechSupport`, `StreamingTV`, `StreamingMovies`, `Contract`, `PaperlessBilling`, `PaymentMethod`, `MonthlyCharges`, `TotalCharges`, `Churn`

---

### 3. Customer ID Uniqueness

| Check | Result | Severity |
|---|---|---|
| Total customer IDs | 7,043 | — |
| Unique customer IDs | 7,043 | — |
| Duplicate IDs | **0** | ✅ No issue |
| Missing IDs | **0** | ✅ No issue |

---

### 4. Churn Distribution

| Churn Value | Count | Percentage |
|---|---|---|
| No (Retained) | 5,174 | 73.46% |
| Yes (Churned) | 1,869 | **26.54%** |

> Overall churn rate is **26.54%** — roughly 1 in 4 customers churned.

---

### 5. Blank TotalCharges

| Check | Result | Severity |
|---|---|---|
| Blank TotalCharges rows | **11** | Medium |

**Finding:** All 11 rows with blank `TotalCharges` have `tenure = 0`.
This means these are brand-new customers who have not yet been billed.

**Planned Action:** During cleaning, convert `TotalCharges` to numeric using `pd.to_numeric(..., errors='coerce')`. For rows where `tenure == 0` and `TotalCharges` is blank, set `TotalCharges = 0`.

Affected rows:
| customerID | tenure | MonthlyCharges |
|---|---|---|
| 4472-LVYGI | 0 | 52.55 |
| 3115-CZMZD | 0 | 20.25 |
| 5709-LVOEQ | 0 | 80.85 |
| 4367-NUYAO | 0 | 25.75 |
| 1371-DWPAZ | 0 | 56.05 |
| 7644-OMVMY | 0 | 19.85 |
| 3213-VVOLG | 0 | 25.35 |
| 2520-SGTTA | 0 | 20.00 |
| 2923-ARZLG | 0 | 19.70 |
| 4075-WKNIU | 0 | 73.35 |
| 2775-SEFEE | 0 | 61.90 |

---

### 6. Missing Values

| Check | Result |
|---|---|
| Null values in any column | **0** — No null values found |

> No traditional missing values (NaN). The only data issue is the 11 blank strings in `TotalCharges`.

---

### 7. Numeric Ranges

| Column | Min | Max | Mean |
|---|---|---|---|
| tenure | 0 | 72 months | 32.37 months |
| MonthlyCharges | $18.25 | $118.75 | $64.76 |
| TotalCharges | $18.80 | $8,684.80 | $2,283.30 |

> All ranges look valid. No negative values. No obvious outliers.

---

### 8. Contract Categories

| Contract Type | Count |
|---|---|
| Month-to-month | 3,875 |
| Two year | 1,695 |
| One year | 1,473 |

> Month-to-month is the most common contract — important for churn analysis.

---

### 9. Internet Service Categories

| Internet Service | Count |
|---|---|
| Fiber optic | 3,096 |
| DSL | 2,421 |
| No | 1,526 |

---

### 10. Payment Method Categories

| Payment Method | Count |
|---|---|
| Electronic check | 2,365 |
| Mailed check | 1,612 |
| Bank transfer (automatic) | 1,544 |
| Credit card (automatic) | 1,522 |

---

### 11. Duplicate Rows

| Check | Result |
|---|---|
| Exact duplicate rows | **0** — No duplicates |

---

## Summary of Issues Found

| Issue | Count | Severity | Planned Action |
|---|---|---|---|
| Duplicate customer IDs | 0 | ✅ None | No action needed |
| Exact duplicate rows | 0 | ✅ None | No action needed |
| Null values | 0 | ✅ None | No action needed |
| Blank TotalCharges | 11 | ⚠️ Medium | Set to 0 for tenure=0 rows |
| Invalid numeric ranges | 0 | ✅ None | No action needed |
| Inconsistent categories | 0 | ✅ None | No action needed |

> **Overall:** Dataset is in very good condition. Only one issue to handle — 11 blank `TotalCharges` values for new customers with zero tenure.

---

*Note: The raw CSV file has NOT been modified. All cleaning will be done in Python.**
