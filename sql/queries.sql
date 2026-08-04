-- =============================================================================
-- Telecom Customer Churn Intelligence — Analytical Business Queries
-- =============================================================================
-- Advanced SQL queries for portfolio health, cohort attrition, and financial modeling
-- =============================================================================

-- -----------------------------------------------------------------------------
-- Query 1: Customer Risk Decile Analysis (Ranking Customers by Risk Score)
-- -----------------------------------------------------------------------------
WITH customer_deciles AS (
    SELECT
        customer_id,
        monthly_charges,
        risk_score,
        churn_flag,
        NTILE(10) OVER (ORDER BY risk_score DESC) AS risk_decile
    FROM fact_customer_churn
)
SELECT
    risk_decile,
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    ROUND(AVG(churn_flag) * 100.0, 2) AS churn_rate_pct,
    ROUND(AVG(risk_score), 1) AS avg_risk_score,
    ROUND(SUM(monthly_charges), 2) AS total_mrr_in_decile
FROM customer_deciles
GROUP BY risk_decile
ORDER BY risk_decile ASC;

-- -----------------------------------------------------------------------------
-- Query 2: Cohort Churn Retention Curve by Tenure (First-Year Danger Zone)
-- -----------------------------------------------------------------------------
SELECT
    tenure_cohort,
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS total_churned,
    ROUND(AVG(churn_flag) * 100.0, 2) AS churn_rate_pct,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charge,
    ROUND(SUM(monthly_charges), 2) AS total_cohort_mrr,
    ROUND(SUM(CASE WHEN churn_flag = 1 THEN monthly_charges ELSE 0 END), 2) AS lost_cohort_mrr
FROM fact_customer_churn
GROUP BY tenure_cohort
ORDER BY churn_rate_pct DESC;

-- -----------------------------------------------------------------------------
-- Query 3: Multi-Product Depth Impact (Stickiness / Cross-Sell Opportunity)
-- -----------------------------------------------------------------------------
SELECT
    total_services_subscribed,
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    ROUND(AVG(churn_flag) * 100.0, 2) AS churn_rate_pct,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charge,
    ROUND(SUM(total_charges), 2) AS cumulative_lifetime_revenue
FROM fact_customer_churn
GROUP BY total_services_subscribed
ORDER BY total_services_subscribed ASC;

-- -----------------------------------------------------------------------------
-- Query 4: Payment Channel Friction & Autopay Opportunity Analysis
-- -----------------------------------------------------------------------------
SELECT
    payment_type_grouped,
    auto_payment_flag,
    paperless_billing,
    COUNT(*) AS customer_count,
    SUM(churn_flag) AS churned_customers,
    ROUND(AVG(churn_flag) * 100.0, 2) AS churn_rate_pct,
    ROUND(SUM(monthly_charges), 2) AS total_monthly_revenue
FROM fact_customer_churn
GROUP BY payment_type_grouped, auto_payment_flag, paperless_billing
ORDER BY churn_rate_pct DESC;

-- -----------------------------------------------------------------------------
-- Query 5: Retention Campaign ROI Simulation (5% Churn Reduction on VIPs)
-- -----------------------------------------------------------------------------
WITH vip_portfolio AS (
    SELECT
        COUNT(*) AS vip_at_risk_count,
        SUM(monthly_charges) AS monthly_revenue_at_risk,
        SUM(monthly_charges) * 12 AS annual_revenue_at_risk
    FROM fact_customer_churn
    WHERE retention_priority = '1. Critical Save (VIP Risk)'
      AND churn_flag = 0
)
SELECT
    vip_at_risk_count,
    ROUND(monthly_revenue_at_risk, 2) AS monthly_revenue_at_risk,
    ROUND(annual_revenue_at_risk, 2) AS annual_revenue_at_risk,
    -- 5% Churn Prevention
    ROUND(annual_revenue_at_risk * 0.05, 2) AS annual_savings_5pct_reduction,
    -- 10% Churn Prevention
    ROUND(annual_revenue_at_risk * 0.10, 2) AS annual_savings_10pct_reduction,
    -- 15% Churn Prevention
    ROUND(annual_revenue_at_risk * 0.15, 2) AS annual_savings_15pct_reduction
FROM vip_portfolio;
