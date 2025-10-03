USE marketing_ab;

CREATE OR REPLACE VIEW vw_segment_marital AS
SELECT
  st.marital_status,                 
  r.campaign_no,                    
  r.accepted,                       
  COUNT(*) AS exposed,               
  SUM(r.accepted) AS conversions,   
  ROUND(
    SUM(st.mnt_total) /
    NULLIF(SUM(
      COALESCE(st.num_web_purchases,0)
    + COALESCE(st.num_catalog_purchases,0)
    + COALESCE(st.num_store_purchases,0)
    ), 0), 2
  ) AS AOV                          
FROM campaign_responses r
JOIN campaign_stg st USING (customer_id)
GROUP BY st.marital_status, r.campaign_no, r.accepted
ORDER BY st.marital_status, r.campaign_no, r.accepted;

