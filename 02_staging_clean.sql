USE marketing_ab;

CREATE TABLE campaign_stg AS
SELECT 
  CAST(ID AS UNSIGNED) AS customer_id,
  NULLIF(TRIM(Education),'') AS education,
  NULLIF(TRIM(Marital_Status),'') AS marital_status,
  CASE WHEN Income IS NULL OR Income <= 0 THEN NULL ELSE income      END AS income,
  COALESCE(kidhome,0) AS kidhome,
  COALESCE(Teenhome,0) As Teenhome,
  STR_TO_DATE(Dt_Customer, '%Y-%m-%d') AS dt_customer,
  COALESCE(NumDealsPurchases,0)              AS num_deals_purchases,
  COALESCE(NumWebPurchases,0)                AS num_web_purchases,
  COALESCE(NumCatalogPurchases,0)            AS num_catalog_purchases,
  COALESCE(NumStorePurchases,0)              AS num_store_purchases,
  COALESCE(NumWebVisitsMonth,0)              AS num_web_visits_month,
  COALESCE(AcceptedCmp1,0) AS accepted_cmp1,
  COALESCE(AcceptedCmp1,0) AS accepted_cmp2,
  COALESCE(AcceptedCmp3,0) AS accepted_cmp3,
  COALESCE(AcceptedCmp4,0) AS accepted_cmp4,
  COALESCE(AcceptedCmp5,0) AS accepted_cmp5,
  COALESCE(Response,0)     AS accepted_latest,
  COALESCE(MntWines,0)
  + COALESCE(MntFruits,0)
  + COALESCE(MntMeatProducts,0) 
  + COALESCE(MntFishProducts,0)
  + COALESCE(MntSweetProducts,0)
  + COALESCE(MntGoldProds,0) AS mnt_total
  FROM marketing_campaign_utf8
  WHERE ID IS NOT NULL;

 


SHOW COLUMNS FROM marketing_campaign_utf8;






  
  CAST(ID AS UNSIGNED)                           AS customer_id,
  NULLIF(TRIM(Education),'')                     AS education,
  NULLIF(TRIM(Marital_Status),'')                AS marital_status,
  CASE WHEN Income IS NULL OR Income <= 0 THEN NULL ELSE Income END AS income,
  STR_TO_DATE(Dt_Customer,'%Y-%m-%d')            AS dt_customer,
  COALESCE(NumWebPurchases,0)                    AS num_web_purchases
FROM marketing_campaign_utf8
WHERE ID IS NOT NULL;