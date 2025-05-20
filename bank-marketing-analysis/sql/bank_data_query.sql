-- In this query we select all te columns needed for our analysis of the telemarketing campaign data
SELECT 
contact, 
job, 
month,
day_of_week,
education,
marital,
housing,
loan, 
CASE 
    WHEN age < 30 THEN 'Menor de 30 años '
    WHEN age BETWEEN 30 AND 39 THEN 'entre 30 y 39 años'
    WHEN age BETWEEN 40 AND 49 THEN 'entre 40 y 49 años'
    WHEN age BETWEEN 50 AND 59 THEN 'entre 50 y 59 años'
    ELSE '60 años o más'
  END AS grupo_edad,
  yes
FROM `banking_data.bank_info`
WHERE yes = 'yes'  AND job != 'unknown' AND day_of_week != 'unknown' 
  AND  education != 'unknown' AND marital != 'unknown' AND housing != 'unknown' AND loan != 'unknown'