SELECT
    player AS Player,
    SUM(Gls) AS [Total Goals]
FROM summary_stats
WHERE team_name = 'Portland Thorns FC'
GROUP BY player
HAVING SUM(Gls) > 0
ORDER BY [Total Goals] DESC;
