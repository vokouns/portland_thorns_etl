SELECT
    player AS Player,
    SUM(ast) AS [Total Assists]
FROM summary_stats
WHERE team_name = 'Portland Thorns FC'
GROUP BY player
HAVING SUM(ast) > 0
ORDER BY [Total Assists] DESC;
