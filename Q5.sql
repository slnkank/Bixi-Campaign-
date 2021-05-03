#5a
SELECT 
    country.name, ROUND(SUM(campaign.pledged), 2)
FROM
    campaign
        JOIN
    country ON campaign.country_id = country.id
WHERE
    campaign.outcome = 'successful'
GROUP BY (country.name)
ORDER BY SUM(campaign.pledged) DESC;

#5b
SELECT 
    country.name, COUNT(country.name)
FROM
    campaign
        JOIN
    country ON campaign.country_id = country.id
WHERE
    campaign.outcome = 'successful'
GROUP BY (country.name)
ORDER BY COUNT(country.name) DESC;