#Q4a
SELECT 
    SUM(campaign.pledged),
    sub_category.name,
    campaign.name
FROM
    sub_category
        JOIN
    campaign ON campaign.sub_category_id = sub_category.id
        JOIN
    category ON sub_category.category_id = category.id
WHERE
    campaign.currency_id = 2
        AND sub_category.id = 14
        AND campaign.outcome = 'successful'
GROUP BY (campaign.name)
ORDER BY SUM(campaign.pledged) DESC;

#Q4b
SELECT 
    SUM(campaign.backers),
    sub_category.name,
    campaign.name
FROM
    sub_category
        JOIN
    campaign ON campaign.sub_category_id = sub_category.id
        JOIN
    category ON sub_category.category_id = category.id
WHERE
    campaign.currency_id = 2
        AND sub_category.id = 14
        AND campaign.outcome = 'successful'
GROUP BY (campaign.name)
ORDER BY SUM(campaign.backers) DESC