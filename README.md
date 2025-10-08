# marketing_campaign_project
SQL A/B Testing on Marketing Campaigns . Data cleaning, transformation, and analysis of Kaggle Marketing Campaign dataset using MySQL. 


 **Project Overview**

This project analyzes the performance of marketing campaigns (A/B testing) to evaluate customer response, conversion rates, and revenue effectiveness.
Data was cleaned and transformed in SQL, then visualized in Power BI to highlight key business insights.


**Tools Used**

MySQL Workbench – Data cleaning, transformation, and metric calculations

Power BI – Interactive dashboard creation and visualization

Excel / CSV – Data export and integration

GitHub – Version control and project documentation



**SQL Data Cleaning & Preparation**

Removed null and invalid IDs

Standardized categorical values (education, marital status)

Created calculated fields for:

mnt_total → total spending per customer

AOV → Average Order Value per customer

CR% → Conversion Rate per campaign

Built final analysis views:

vw_campaign_summary

vw_aov_by_campaign_accept

vw_segment_income, vw_segment_education, vw_segment_marital



**Power BI Dashboard Highlights**

KPI Cards:

Total Exposed

Total Revenue

Avg AOV

Total Conversions

Conversion Rate (%)

Visuals:

Revenue per Campaign

Conversion Rate by Campaign

Exposed vs Conversions

Campaign Selector (interactive slicer)

** Key Insights**

Campaign 6 achieved the highest conversion rate (≈15%).

Average order value remained stable (~290).

Total revenue exceeded 53K across campaigns.

Interactive slicer allows comparison between campaigns.

<img width="1096" height="613" alt="image" src="https://github.com/user-attachments/assets/18defe94-a00f-4970-96ce-a4ee7def7c62" />


**Files in this Repository**
File	Description
marketing_campaign.sql	SQL scripts for data cleaning and transformation
campaign_summary_export.pbix	Power BI dashboard file
marketing_campaign.xlsx	Cleaned dataset exported from SQL
README.md	Project documentation

**Business Value**

This project simulates a real-world marketing analysis, tracking campaign effectiveness and ROI, identifying which campaigns drive the most conversions, and providing insights for future marketing strategy.
