-- =============================================================================
-- Telecom Customer Churn Intelligence — Database DDL Schema
-- =============================================================================
-- Database: telecom_churn.db (SQLite / ANSI SQL compatible)
-- Description: Table definitions for raw staging, analytical fact table, and dimensions.
-- =============================================================================

-- Drop existing tables if re-initializing
DROP TABLE IF EXISTS fact_customer_churn;
DROP TABLE IF EXISTS dim_contract;
DROP TABLE IF EXISTS dim_payment;
DROP TABLE IF EXISTS dim_services;

-- -----------------------------------------------------------------------------
-- 1. Main Analytical Fact Table: fact_customer_churn
-- -----------------------------------------------------------------------------
CREATE TABLE fact_customer_churn (
    customer_id                 VARCHAR(20) PRIMARY KEY,
    gender                      VARCHAR(10) NOT NULL,
    senior_citizen              INTEGER NOT NULL CHECK (senior_citizen IN (0, 1)),
    partner                     VARCHAR(5) NOT NULL CHECK (partner IN ('Yes', 'No')),
    dependents                  VARCHAR(5) NOT NULL CHECK (dependents IN ('Yes', 'No')),
    family_status               VARCHAR(50) NOT NULL,
    tenure                      INTEGER NOT NULL CHECK (tenure >= 0 AND tenure <= 120),
    tenure_cohort               VARCHAR(30) NOT NULL,
    phone_service               VARCHAR(5) NOT NULL CHECK (phone_service IN ('Yes', 'No')),
    multiple_lines              VARCHAR(25) NOT NULL,
    internet_service            VARCHAR(20) NOT NULL,
    online_security             VARCHAR(25) NOT NULL,
    online_backup               VARCHAR(25) NOT NULL,
    device_protection           VARCHAR(25) NOT NULL,
    tech_support                VARCHAR(25) NOT NULL,
    streaming_tv                VARCHAR(25) NOT NULL,
    streaming_movies            VARCHAR(25) NOT NULL,
    contract                    VARCHAR(20) NOT NULL,
    paperless_billing           VARCHAR(5) NOT NULL CHECK (paperless_billing IN ('Yes', 'No')),
    payment_method              VARCHAR(40) NOT NULL,
    payment_type_grouped        VARCHAR(30) NOT NULL,
    monthly_charges             REAL NOT NULL CHECK (monthly_charges > 0),
    monthly_charges_tier        VARCHAR(30) NOT NULL,
    total_charges               REAL NOT NULL CHECK (total_charges >= 0),
    churn                       VARCHAR(5) NOT NULL CHECK (churn IN ('Yes', 'No')),
    churn_flag                  INTEGER NOT NULL CHECK (churn_flag IN (0, 1)),
    has_phone                   INTEGER NOT NULL CHECK (has_phone IN (0, 1)),
    has_multiple_lines          INTEGER NOT NULL CHECK (has_multiple_lines IN (0, 1)),
    has_internet                INTEGER NOT NULL CHECK (has_internet IN (0, 1)),
    has_online_security         INTEGER NOT NULL CHECK (has_online_security IN (0, 1)),
    has_online_backup           INTEGER NOT NULL CHECK (has_online_backup IN (0, 1)),
    has_device_protection       INTEGER NOT NULL CHECK (has_device_protection IN (0, 1)),
    has_tech_support            INTEGER NOT NULL CHECK (has_tech_support IN (0, 1)),
    has_streaming_tv            INTEGER NOT NULL CHECK (has_streaming_tv IN (0, 1)),
    has_streaming_movies        INTEGER NOT NULL CHECK (has_streaming_movies IN (0, 1)),
    has_streaming_bundle        INTEGER NOT NULL CHECK (has_streaming_bundle IN (0, 1)),
    total_services_subscribed   INTEGER NOT NULL CHECK (total_services_subscribed >= 0 AND total_services_subscribed <= 9),
    security_tech_score         INTEGER NOT NULL CHECK (security_tech_score >= 0 AND security_tech_score <= 4),
    auto_payment_flag           INTEGER NOT NULL CHECK (auto_payment_flag IN (0, 1)),
    paperless_echeck_risk       INTEGER NOT NULL CHECK (paperless_echeck_risk IN (0, 1)),
    high_risk_contract          INTEGER NOT NULL CHECK (high_risk_contract IN (0, 1)),
    risk_score                  INTEGER NOT NULL CHECK (risk_score >= 0 AND risk_score <= 100),
    risk_tier                   VARCHAR(20) NOT NULL,
    customer_value_tier         VARCHAR(20) NOT NULL,
    retention_priority          VARCHAR(50) NOT NULL,
    recommended_action          TEXT NOT NULL
);

-- Indexing for high-performance filtering & joins
CREATE INDEX idx_churn_flag ON fact_customer_churn(churn_flag);
CREATE INDEX idx_contract ON fact_customer_churn(contract);
CREATE INDEX idx_tenure_cohort ON fact_customer_churn(tenure_cohort);
CREATE INDEX idx_risk_tier ON fact_customer_churn(risk_tier);
CREATE INDEX idx_retention_priority ON fact_customer_churn(retention_priority);
