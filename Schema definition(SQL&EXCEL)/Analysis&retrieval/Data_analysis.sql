-- Count how many times each disease was detected
SELECT disease_detected, COUNT(*) AS occurrence
FROM TeaLeaves
GROUP BY disease_detected
ORDER BY occurrence DESC;
