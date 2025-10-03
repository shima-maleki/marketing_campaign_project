-- AOV by campaign/accept
USE marketing_ab;
CREATE OR REPLACE VIEW aov_by_campaign_accept AS
SELECT r.campaign_no, r.accepted,
ROUND(
  SUM(st.mnt_total) / 
  NULLIF(SUM(
    COALESCE(st.num_web_purchases,0) +
    COALESCE(st.num_catalog_purchases,0) +
    COALESCE(st.num_store_purchases,0)
  ), 0),
  2
) AS AOV
FROM campaign_responses r
JOIN campaign_stg st USING (customer_id)
GROUP BY r.campaign_no , r.accepted
ORDER BY r.campaign_no, r.accepted;










