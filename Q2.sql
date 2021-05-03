#Q2a
SELECT 
    SUM(campaign.backers), category.name
FROM
    sub_category
        JOIN
    campaign ON campaign.sub_category_id = sub_category.id
        JOIN
    category ON sub_category.category_id = category.id
WHERE
    campaign.currency_id = 2
GROUP BY (category.name)
ORDER BY SUM(campaign.backers) DESC
LIMIT 3;

#Q2b
SELECT 
    SUM(campaign.backers), category.name
FROM
    sub_category
        JOIN
    campaign ON campaign.sub_category_id = sub_category.id
        JOIN
    category ON sub_category.category_id = category.id
WHERE
    campaign.currency_id = 2
GROUP BY (category.name)
ORDER BY SUM(campaign.backers) ASC
LIMIT 3;

#Q2c
SELECT 
    SUM(campaign.backers),
    category.name,
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
GROUP BY (category.name)
ORDER BY SUM(campaign.backers) ASC

