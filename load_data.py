import pandas as pd
from sqlalchemy import create_engine

# load dataset
df = pd.read_csv("C:\\Users\\anush\\OneDrive\\Desktop\\delhivery_data.csv")

print(df.shape)

# connection
engine = create_engine(
    "mssql+pyodbc://@localhost\\SQLEXPRESS/LogisticsDW?driver=ODBC+Driver+17+for+SQL+Server"
)

# load to sql
df.to_sql("stg_delhivery", engine, if_exists="replace", index=False)

print("DATA LOADED SUCCESSFULLY")