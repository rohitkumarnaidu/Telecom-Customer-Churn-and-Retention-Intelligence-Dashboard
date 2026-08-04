// =============================================================================
// Power Query M Scripts — Telecom Churn Intelligence Star Schema
// =============================================================================
// Use in Power BI Desktop -> Home -> Advanced Editor for each respective table.
// =============================================================================

// -----------------------------------------------------------------------------
// 1. Staging Query (Base Source)
// Name: Stg_TelcoData
// -----------------------------------------------------------------------------
let
    Source = Csv.Document(File.Contents(Text.Combine({Text.Start(Text.From(Extension.Contents("")), 0), "C:\PROJECTS\Data Analytics\Telecom\data\processed\telco_segmented.csv"})), [Delimiter=",", Columns=37, Encoding=65001, QuoteStyle=QuoteStyle.None]),
    #"Promoted Headers" = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    #"Changed Types" = Table.TransformColumnTypes(#"Promoted Headers",{
        {"customer_id", type text},
        {"gender", type text},
        {"senior_citizen", Int64.Type},
        {"partner", type text},
        {"dependents", type text},
        {"family_status", type text},
        {"tenure", Int64.Type},
        {"tenure_cohort", type text},
        {"phone_service", type text},
        {"multiple_lines", type text},
        {"internet_service", type text},
        {"online_security", type text},
        {"online_backup", type text},
        {"device_protection", type text},
        {"tech_support", type text},
        {"streaming_tv", type text},
        {"streaming_movies", type text},
        {"contract", type text},
        {"paperless_billing", type text},
        {"payment_method", type text},
        {"payment_type_grouped", type text},
        {"monthly_charges", type number},
        {"monthly_charges_tier", type text},
        {"total_charges", type number},
        {"churn", type text},
        {"churn_flag", Int64.Type},
        {"has_phone", Int64.Type},
        {"has_multiple_lines", Int64.Type},
        {"has_internet", Int64.Type},
        {"has_online_security", Int64.Type},
        {"has_online_backup", Int64.Type},
        {"has_device_protection", Int64.Type},
        {"has_tech_support", Int64.Type},
        {"has_streaming_tv", Int64.Type},
        {"has_streaming_movies", Int64.Type},
        {"has_streaming_bundle", Int64.Type},
        {"total_services_subscribed", Int64.Type},
        {"security_tech_score", Int64.Type},
        {"auto_payment_flag", Int64.Type},
        {"paperless_echeck_risk", Int64.Type},
        {"high_risk_contract", Int64.Type},
        {"risk_score", Int64.Type},
        {"risk_tier", type text},
        {"customer_value_tier", type text},
        {"retention_priority", type text},
        {"recommended_action", type text}
    })
in
    #"Changed Types"


// -----------------------------------------------------------------------------
// 2. Fact Table: Fact_CustomerChurn
// Name: Fact_CustomerChurn
// -----------------------------------------------------------------------------
let
    Source = Stg_TelcoData,
    #"Select Fact Columns" = Table.SelectColumns(Source, {
        "customer_id", "tenure", "tenure_cohort", "monthly_charges", "monthly_charges_tier",
        "total_charges", "churn", "churn_flag", "total_services_subscribed", "security_tech_score",
        "risk_score", "risk_tier", "customer_value_tier", "retention_priority", "recommended_action",
        "contract", "payment_method", "internet_service"
    })
in
    #"Select Fact Columns"


// -----------------------------------------------------------------------------
// 3. Dimension Table: Dim_Customer
// Name: Dim_Customer
// -----------------------------------------------------------------------------
let
    Source = Stg_TelcoData,
    #"Select Customer Cols" = Table.SelectColumns(Source, {
        "customer_id", "gender", "senior_citizen", "partner", "dependents", "family_status"
    }),
    #"Removed Duplicates" = Table.Distinct(#"Select Customer Cols", {"customer_id"})
in
    #"Removed Duplicates"


// -----------------------------------------------------------------------------
// 4. Dimension Table: Dim_Contract
// Name: Dim_Contract
// -----------------------------------------------------------------------------
let
    Source = Stg_TelcoData,
    #"Select Contract Cols" = Table.SelectColumns(Source, {"contract", "paperless_billing", "high_risk_contract"}),
    #"Removed Duplicates" = Table.Distinct(#"Select Contract Cols", {"contract", "paperless_billing"}),
    #"Added Index" = Table.AddIndexColumn(#"Removed Duplicates", "contract_key", 1, 1, Int64.Type)
in
    #"Added Index"


// -----------------------------------------------------------------------------
// 5. Dimension Table: Dim_PaymentMethod
// Name: Dim_PaymentMethod
// -----------------------------------------------------------------------------
let
    Source = Stg_TelcoData,
    #"Select Payment Cols" = Table.SelectColumns(Source, {"payment_method", "payment_type_grouped", "auto_payment_flag"}),
    #"Removed Duplicates" = Table.Distinct(#"Select Payment Cols", {"payment_method"}),
    #"Added Index" = Table.AddIndexColumn(#"Removed Duplicates", "payment_key", 1, 1, Int64.Type)
in
    #"Added Index"
