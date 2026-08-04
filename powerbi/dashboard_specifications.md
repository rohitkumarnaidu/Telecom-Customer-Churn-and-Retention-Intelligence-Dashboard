# Power BI Dashboard Specification & Visual Layout Guide
## Telecom Customer Churn and Retention Intelligence Dashboard

---

### Executive Color Palette & Theme Tokens
- **Primary Background:** `#F8FAFC` (Slate 50) or Dark Canvas `#0F172A` (Slate 900)
- **Card Background:** `#FFFFFF` (White) with subtle border `#E2E8F0` (Slate 200)
- **Primary Brand / Navy:** `#1E3A8A` (Blue 900)
- **Accent Interactive Blue:** `#2563EB` (Blue 600)
- **Alert / Churn Red:** `#DC2626` (Red 600)
- **Success / Retain Green:** `#059669` (Emerald 600)
- **Warning / Medium Risk Amber:** `#D97706` (Amber 600)

---

## Page 1: Executive Overview (C-Suite Snapshot)

### Layout Wireframe
```
+---------------------------------------------------------------------------------------------------+
|  [Logo] Telecom Churn & Retention Intelligence Dashboard      [Filters: Contract | Tech | Date]   |
+---------------------------------------------------------------------------------------------------+
| [ KPI Card 1 ]       | [ KPI Card 2 ]        | [ KPI Card 3 ]       | [ KPI Card 4 ]              |
| Total Customers      | Churn Rate %          | Total MRR            | Annual Revenue Lost         |
| 7,043                | 26.5%                 | $456.1K              | $1.67M                      |
+----------------------+-----------------------+----------------------+-----------------------------+
| [ Visual 1: Bar Chart ]                      | [ Visual 2: Donut Chart ]                          |
| Churn Rate by Contract Type                  | MRR Portfolio Distribution                         |
| (Month-to-month 42.7% vs 2-Yr 2.8%)          | Retained ($317K) vs Churned ($139K)                |
+----------------------------------------------+----------------------------------------------------+
| [ Visual 3: Column Chart ]                   | [ Visual 4: Stacked Bar Chart ]                    |
| Churn by Lifecycle Cohort                    | Churn by Payment Method Friction                   |
| (Year 1: 47.4% -> Year 5+: 6.6%)             | (Electronic Check 45.3% vs Autopay 16.0%)          |
+---------------------------------------------------------------------------------------------------+
```

---

## Page 2: Churn & Revenue Risk Analysis

### Objectives
- Uncover the revenue concentration of churners vs retained accounts.
- Analyze monthly charges distribution by churn outcome.
- Highlight the **Fiber Optic Paradox** (High MRR churn cluster).

### Key Visuals
1. **Histogram / Scatter Plot:** `Monthly Charges vs Tenure` colored by `Churn`
2. **Matrix Visual:** `Contract Type x Internet Service` showing Churn Rate & Lost MRR
3. **Decomposition Tree:** Root: `Total Churned Customers` -> Split by `Contract` -> `Internet Service` -> `Payment Method`

---

## Page 3: Customer Risk & Behavioral Segmentation

### Objectives
- Monitor the health distribution across the 100-point Churn Risk Score.
- Analyze customer migration between `High Risk`, `Medium Risk`, and `Low Risk` tiers.

### Key Visuals
1. **Gauge / KPI Cards:** Count & % of `High Risk` Customers (`Score >= 60`)
2. **Scatter Plot:** X-axis = `Risk Score`, Y-axis = `Monthly Charges`, Size = `Tenure`, Legend = `Risk Tier`
3. **Treemap:** Customer Value Tier x Risk Tier breakdown

---

## Page 4: Service & Product Performance (The Protection Shield)

### Objectives
- Quantify the retention lift provided by add-on security products.
- Identify single-service vs multi-service churn elasticity.

### Key Visuals
1. **Clustered Bar Chart:** Churn Rate by `Total Services Subscribed` (0 to 9)
2. **Heatmap Matrix:** `Tech Support (Yes/No)` x `Online Security (Yes/No)` vs Churn Rate
3. **Funnel Chart:** Service Adoption Drop-off from Internet Base

---

## Page 5: Retention Action Playbook & VIP Worklist

### Objectives
- Provide frontline retention managers and account executives with an actionable worklist.
- Direct export capability to CSV/Excel for CRM outreach.

### Key Visuals
1. **Interactive Filter Panel:** Slicers for `Retention Priority`, `Risk Tier`, `Monthly Charges Tier`
2. **Actionable Table Grid:**
   - Columns: `Customer ID`, `Contract`, `Tenure`, `Monthly Charges`, `Risk Score`, `Priority`, `Recommended Action`
   - Conditional Formatting: Red highlight on `1. Critical Save (VIP Risk)`
3. **One-Click Drillthrough:** Navigate from VIP customer to individual profile card

---

## Page 6: What-If Scenario & Retention ROI Simulator

### Objectives
- Allow executive leadership to simulate financial ROI from retention initiatives.

### Key Visuals
1. **Numeric Range Slicer (What-If Parameter):** `Target Churn Reduction %` (1% to 20%, default 5%)
2. **Simulated Revenue Saved Card:** Dynamic DAX formula displaying `$[Annualized Revenue Lost] * [Reduction %]`
3. **Simulated Retained Accounts Card:** `[Churned Customers] * [Reduction %]`
4. **Waterfall Chart:** Current Churn Loss -> Simulated Retention Savings -> Projected Adjusted Loss
