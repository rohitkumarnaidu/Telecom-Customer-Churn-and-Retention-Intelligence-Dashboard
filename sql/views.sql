-- =============================================================================
-- Telecom Customer Churn Intelligence — Analytical Views
-- =============================================================================
-- Views for business reporting, KPI monitoring, and executive summaries
-- =============================================================================

-- -----------------------------------------------------------------------------
-- View 1: Executive KPI Overview
-- -----------------------------------------------------------------------------
CREATE VIEW IF NOT EXISTS vw_executive_kpis AS
SELECT
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS total_churned_customers,
    ROUND(AVG(churn_flag) * 100.0, 2) AS churn_rate_pct,
    ROUND(SUM(monthly_charges), 2) AS total_mrr,
    ROUND(SUM(CASE WHEN churn_flag = 1 THEN monthly_charges ELSE 0 END), 2) AS churned_mrr,
    ROUND((SUM(CASE WHEN churn_flag = 1 THEN monthly_charges ELSE 0 END) / SUM(monthly_charges)) * 100.0, 2) AS mrr_loss_pct,
    ROUND(SUM(CASE WHEN churn_flag = 1 THEN monthly_charges ELSE 0 END) * 12, 2) AS annualized_revenue_loss,
    ROUND(AVG(CASE WHEN churn_flag = 1 THEN monthly_charges ELSE NULL END), 2) AS avg_churner_monthly_charge,
    ROUND(AVG(CASE WHEN churn_flag = 0 THEN monthly_charges ELSE NULL END), 2) AS avg_retained_monthly_charge
FROM fact_customer_churn;

-- -----------------------------------------------------------------------------
-- View 2: Churn & Revenue Risk by Contract Type
-- -----------------------------------------------------------------------------
CREATE VIEW IF NOT EXISTS vw_churn_by_contract AS
SELECT
    contract,
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    ROUND(AVG(churn_flag) * 100.0, 2) AS churn_rate_pct,
    ROUND(SUM(monthly_charges), 2) AS total_mrr,
    ROUND(SUM(CASE WHEN churn_flag = 1 THEN monthly_charges ELSE 0 END), 2) AS mrr_at_risk,
    ROUND(AVG(tenure), 1) AS avg_tenure_months
FROM fact_customer_churn
GROUP BY contract
ORDER BY churn_rate_pct DESC;

-- -----------------------------------------------------------------------------
-- View 3: Churn Risk Tier & Priority Matrix Breakdown
-- -----------------------------------------------------------------------------
CREATE VIEW IF NOT EXISTS vw_risk_priority_matrix AS
SELECT
    retention_priority,
    risk_tier,
    customer_value_tier,
    COUNT(*) AS customer_count,
    ROUND(SUM(monthly_charges), 2) AS total_monthly_revenue,
    ROUND(AVG(risk_score), 1) AS avg_risk_score,
    ROUND(AVG(churn_flag) * 100.0, 2) AS actual_churn_rate_pct,
    recommended_action
FROM fact_customer_churn
GROUP BY retention_priority, risk_tier, customer_value_tier, recommended_action
ORDER BY customer_count DESC;

-- -----------------------------------------------------------------------------
-- View 4: Service Adoption & Tech Support "Shield Effect"
-- -----------------------------------------------------------------------------
CREATE VIEW IF NOT EXISTS vw_service_protection_shield AS
SELECT
    internet_service,
    tech_support,
    online_security,
    COUNT(*) AS customer_count,
    SUM(churn_flag) AS churned_count,
    ROUND(AVG(churn_flag) * 100.0, 2) AS churn_rate_pct,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charge
FROM fact_customer_churn
GROUP BY internet_service, tech_support, online_security
ORDER BY churn_rate_pct DESC;

-- -----------------------------------------------------------------------------
-- View 5: High Priority VIP Risk Customer Intervention List
-- -----------------------------------------------------------------------------
CREATE VIEW IF NOT EXISTS vw_vip_risk_customers AS
SELECT
    customer_id,
    gender,
    senior_citizen,
    tenure,
    contract,
    internet_service,
    payment_method,
    monthly_charges,
    risk_score,
    risk_tier,
    customer_value_tier,
    recommended_action
FROM fact_customer_churn
WHERE retention_priority = '1. Critical Save (VIP Risk)'
  AND churn_flag = 0  -- Active customers currently at immediate risk of leaving
ORDER BY monthly_charges DESC, risk_score DESC;
