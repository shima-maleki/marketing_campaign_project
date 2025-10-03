USE marketing_ab;

SELECT
  campaign_no,
  COUNT(*) AS exposed,                
  SUM(accepted) AS conversions,      
  ROUND(100*SUM(accepted)/COUNT(*),2) AS cr_percent 
FROM campaign_responses
GROUP BY campaign_no
ORDER BY campaign_no;


