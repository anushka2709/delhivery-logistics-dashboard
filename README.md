# 📦 Logistics Performance Dashboard

## 🔍 Project Overview
This project presents an end-to-end logistics analytics solution built using SQL, Python, and Power BI.  
It focuses on analyzing delivery performance, identifying inefficiencies, and providing actionable insights for optimization.

---

## 🎯 Objectives
- Analyze delivery performance across different centers  
- Compare actual vs expected delivery times  
- Identify delays and inefficiencies  
- Optimize logistics operations using data insights  

---

## 🛠 Tech Stack
- **SQL Server** → Data extraction & transformation  
- **Python (Pandas)** → Data loading & preprocessing  
- **Power BI** → Data modeling & visualization  

---

## 📊 Dashboard Features

### 🔹 KPI Metrics
- Total Trips  
- Average Delivery Time  
- Average Delay  
- Efficiency %

### 🔹 Analysis Visuals
- 📈 Trips trend over time  
- 🏢 Center-wise performance  
- ⏱ Delivery vs Expected Time comparison  
- 📊 Delay trends by month  
- 🔵 Delivery Efficiency Scatter Plot (Distance vs Time)

---

## 🧠 Key Insights
- Identified high-volume and high-performance centers  
- Observed increasing delay trends over time  
- Found correlation between delivery distance and time  
- Highlighted inefficiencies in certain routes  

---

## 🏗 Data Modeling
- Implemented **Star Schema**
  - Fact Table → `fact_delivery_trip`  
  - Dimension Tables → `dim_date`, `dim_centers`  

---

## 📁 Project Files
- `logistics_dashboard.pbix` → Power BI dashboard  
- `load_data.py` → Data loading script  
- `SQLQuery*.sql` → Data transformation queries  

---

## 🚀 Learnings
- Data modeling (Star Schema design)  
- Writing efficient SQL queries  
- Creating DAX measures in Power BI  
- Building interactive dashboards  

---

## 🙌 Conclusion
This project demonstrates how data analytics can be used to improve logistics efficiency and support data-driven decision-making.

---

⭐ If you found this project useful, feel free to star the repo!
