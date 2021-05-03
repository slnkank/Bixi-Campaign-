#Q1_1
SELECT 
    campaign.outcome,
    ROUND(AVG(campaign.goal), 2)
FROM
    campaign
WHERE
    campaign.currency_id = 2
GROUP BY (campaign.outcome)
ORDER BY avg(campaign.goal) DESC;

#Q1_2
SELECT 
    campaign.outcome,
    ROUND((AVG(UNIX_TIMESTAMP(campaign.deadline) - UNIX_TIMESTAMP(campaign.launched)) / 86400),
            2)
FROM
    campaign
WHERE
    campaign.currency_id = 2
GROUP BY (campaign.outcome)
ORDER BY (campaign.outcome);

#Q1_3
SELECT 
    country.name,
    round(SUM(campaign.pledged),2)
FROM
    campaign
        JOIN
    country ON campaign.country_id = country.id
WHERE
    campaign.outcome='successful'
GROUP BY (country.name)
ORDER BY SUM(campaign.pledged) DESC;