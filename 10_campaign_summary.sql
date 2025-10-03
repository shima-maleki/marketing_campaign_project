USE marketing_ab;

CREATE OR REPLACE VIEW vw_campaign_summary AS
SELECT
  r.campaign_no,
  COUNT(*) AS exposed,
  SUM(r.accepted) AS conversions,
  ROUND(100 * SUM(r.accepted) / COUNT(*), 2) AS cr_percent,
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
GROUP BY r.campaign_no
ORDER BY r.campaign_no;


