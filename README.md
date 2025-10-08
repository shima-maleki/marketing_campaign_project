# 🎯 Marketing Campaign Analysis — SQL A/B Testing & Power BI Dashboard

This project showcases **data-driven decision-making for marketing optimization**.  
It involves **SQL-based A/B testing**, **data cleaning**, and **visual analytics** to evaluate the performance of marketing campaigns using the **Kaggle Marketing Campaign dataset**.

---

## 🧭 Project Overview

The objective of this project was to **analyze customer response, conversion rates, and revenue effectiveness** across multiple marketing campaigns.  
Data was **cleaned and transformed in MySQL**, then visualized through an **interactive Power BI dashboard** that highlights actionable business insights.

<p align="center">
  <img width="1096" height="613" alt="Power BI Dashboard Preview" src="https://github.com/user-attachments/assets/18defe94-a00f-4970-96ce-a4ee7def7c62" />
</p>

---

## 🛠 Tools & Technologies

| Tool | Purpose |
|------|----------|
| **MySQL Workbench** | Data cleaning, transformation, and metric calculations |
| **Power BI** | Dashboard design and interactive visualization |
| **Excel / CSV** | Data export and integration |
| **GitHub** | Version control and documentation |

---

## 🧹 SQL Data Cleaning & Transformation

Performed comprehensive data preparation in SQL, including:

- ✅ Removal of nulls, duplicates, and invalid customer IDs  
- ✅ Standardization of categorical fields (e.g., education, marital status)  
- ✅ Creation of key performance metrics:
  - `mnt_total` → Total customer spending  
  - `AOV` → Average Order Value  
  - `CR%` → Conversion Rate per campaign  

Final analytical SQL views created:

- `vw_campaign_summary`  
- `vw_aov_by_campaign_accept`  
- `vw_segment_income`  
- `vw_segment_education`  
- `vw_segment_marital`  

---

## 📊 Power BI Dashboard Highlights

### **KPIs**
- Total Exposed Customers  
- Total Revenue  
- Average Order Value (AOV)  
- Total Conversions  
- Conversion Rate (%)

### **Visuals**
- Revenue by Campaign  
- Conversion Rate by Campaign  
- Exposed vs. Converted Customers  
- Interactive Campaign Selector (slicer for dynamic comparisons)

---

## 💡 Key Insights

- **Campaign 6** delivered the highest conversion rate (~15%)  
- **Average Order Value** remained consistent around **$290**  
- **Total Revenue** exceeded **$53K** across all campaigns  
- Dashboard interactivity allows quick comparison of campaign effectiveness  

---

## 📂 Repository Contents

| File | Description |
|------|-------------|
| `marketing_campaign.sql` | SQL scripts for data cleaning and transformation |
| `campaign_summary_export.pbix` | Power BI dashboard file |
| `marketing_campaign.xlsx` | Cleaned dataset exported from SQL |
| `README.md` | Project documentation (this file) |

---

## 💼 Business Value

This project simulates a **real-world marketing analytics workflow**, combining SQL and BI tools to:

- Measure **campaign ROI and conversion efficiency**
- Identify **high-performing customer segments**
- Support **data-driven marketing decisions**

By leveraging data engineering and visualization skills, this project demonstrates the ability to **translate raw data into actionable business insights**.

---

## 📎 How to Use

1. Clone the repository  
   ```bash
   git clone https://github.com/yourusername/marketing_campaign_project.git
