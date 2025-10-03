USE marketing_ab;       -- AOV per customer

CREATE OR REPLACE VIEW aov_per_customer AS    -- Calculate AOV (Average Order Value)
SELECT
  customer_id,
  mnt_total,
  (COALESCE(num_web_purchases,0)
   + COALESCE(num_catalog_purchases,0)
   + COALESCE(num_store_purchases,0)) AS total_purchases,     -- total_purchases: number of purchase
   ROUND(
     mnt_total / NULLIF(
     (COALESCE(num_web_purchases,0)
      + COALESCE(num_catalog_purchases,0)
      + COALESCE(num_store_purchases,0)),0),2) AS AOV
FROM campaign_stg;     
      

     
	

   
   

  
  