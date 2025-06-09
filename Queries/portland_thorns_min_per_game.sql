SELECT
    Player,
    ROUND(CAST(SUM(min) AS FLOAT) / COUNT(*), 2) AS [Minutes / Game],
	COUNT(min) AS [Games Played]
FROM dbo.summary_stats
WHERE team_name = 'Portland Thorns FC'
GROUP BY player
ORDER BY [Minutes / Game] DESC;
