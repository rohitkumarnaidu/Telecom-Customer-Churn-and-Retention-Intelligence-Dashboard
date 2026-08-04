"""
Database Ingestion Script for Telecom Customer Churn Intelligence
Initializes telecom_churn.db, executes DDL schema, loads processed data, and registers views.
"""

import sqlite3
import pandas as pd
from pathlib import Path

def setup_database():
    project_root = Path(__file__).resolve().parent.parent
    db_path = project_root / 'database' / 'telecom_churn.db'
    schema_path = project_root / 'sql' / 'schema.sql'
    views_path = project_root / 'sql' / 'views.sql'
    data_path = project_root / 'data' / 'processed' / 'telco_segmented.csv'
    
    # Ensure database directory exists
    db_path.parent.mkdir(parents=True, exist_ok=True)
    
    print(f"Connecting to database: {db_path}")
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()
    
    # 1. Execute Schema DDL
    print("Executing schema.sql DDL...")
    with open(schema_path, 'r', encoding='utf-8') as f:
        schema_sql = f.read()
    cursor.executescript(schema_sql)
    print("✓ Schema and indexes created successfully.")
    
    # 2. Ingest Processed Data
    if data_path.exists():
        print(f"Loading data from: {data_path}")
        df = pd.read_csv(data_path)
        df.to_sql('fact_customer_churn', conn, if_exists='append', index=False)
        print(f"✓ Loaded {len(df):,} records into 'fact_customer_churn'.")
    else:
        print(f"⚠️ Warning: Data file {data_path} not found. Run notebooks 02-04 first.")
        
    # 3. Create Views
    print("Creating analytical views from views.sql...")
    with open(views_path, 'r', encoding='utf-8') as f:
        views_sql = f.read()
    cursor.executescript(views_sql)
    print("✓ Analytical views registered successfully.")
    
    conn.commit()
    conn.close()
    print("Database setup complete! 🎉")

if __name__ == '__main__':
    setup_database()
