#Q6a
SELECT 
category.name,
    ROUND(AVG(campaign.pledged), 2),
    ROUND((AVG(UNIX_TIMESTAMP(campaign.deadline) - UNIX_TIMESTAMP(campaign.launched)) / 86400),
            2)
FROM
    sub_category
        JOIN
    campaign ON campaign.sub_category_id = sub_category.id
        JOIN
    category ON sub_category.category_id = category.id
WHERE
    campaign.currency_id = 2
        AND campaign.outcome = 'successful'
GROUP BY (category.name)
ORDER BY AVG(campaign.pledged) DESC;

#Q6b
SELECT 
    ROUND(AVG(campaign.pledged), 2),
    ROUND((AVG(UNIX_TIMESTAMP(campaign.deadline) - UNIX_TIMESTAMP(campaign.launched)) / 86400),
            2)
FROM
    campaign
WHERE
    campaign.currency_id = 2
        AND campaign.outcome = 'successful'
ORDER BY AVG(campaign.pledged) DESC;