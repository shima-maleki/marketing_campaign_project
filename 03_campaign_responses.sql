USE marketing_ab;

DROP TABLE IF EXISTS campaign_responses;

CREATE TABLE  campaign_responses AS
SELECT customer_id, 1 AS campaign_no , accepted_cmp1 AS accepted FROM  campaign_stg
UNION ALL
SELECT customer_id, 2 AS campaign_no, accepted_cmp2 AS accepted FROM campaign_stg 
UNION ALL
SELECT customer_id, 3 AS campaign_no , accepted_cmp3 AS accepted FROM campaign_stg
UNION ALL
SELECT customer_id, 4 AS campaign_no , accepted_cmp4 AS accepted FROM campaign_stg
UNION ALL
SELECT customer_id, 5 AS campaign_no , accepted_cmp5 AS accepted FROM campaign_stg
UNION ALL 
SELECT customer_id, 6 AS campaign_no , accepted_latest AS accepted FROM campaign_stg;
CREATE INDEX index_campaign_no ON campaign_responses (campaign_no);
CREATE INDEX index_campaign_id ON campaign_responses (customer_id);




