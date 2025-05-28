SELECT player AS Player,
	SUM(SoT) AS [Total Shots on Target]
FROM summary_stats
WHERE team_name = 'Portland Thorns FC'
GROUP BY player
HAVING SUM(SoT) > 0
ORDER BY [Total Shots on Target] DESC