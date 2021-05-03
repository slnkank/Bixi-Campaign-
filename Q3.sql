#Q3a
SELECT 
    ROUND(SUM(campaign.pledged), 2), category.name
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
ORDER BY SUM(campaign.pledged) DESC
LIMIT 3;

#Q3b
SELECT 
    ROUND(SUM(campaign.pledged), 2), category.name
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
ORDER BY SUM(campaign.pledged) ASC
LIMIT 3;